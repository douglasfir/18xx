# frozen_string_literal: true

require_relative 'part/path'

module Engine
  class Graph
    def initialize(game)
      @game = game
      @connected_hexes = {}
      @connected_nodes = {}
      @connected_paths = {}
      @reachable_hexes = {}
      @tokenable_cities = {}
      @routes = {}
      @tokens = {}
    end

    def clear
      @connected_hexes.clear
      @connected_nodes.clear
      @connected_paths.clear
      @reachable_hexes.clear
      @tokenable_cities.clear
      @tokens.clear
      @routes.delete_if do |_, route|
        !route[:route_train_purchase]
      end
    end

    def clear_graph_for(corporation)
      clear
      @routes.delete(corporation)
    end

    def clear_graph_for_all
      # warning: this is very costly
      clear
      @routes.clear
    end

    def route_info(corporation)
      compute(corporation, routes_only: true) unless @routes[corporation]
      @routes[corporation]
    end

    def can_token?(corporation)
      return @tokens[corporation] if @tokens.key?(corporation)

      compute(corporation) do |node|
        if node.tokenable?(corporation, free: true)
          @tokens[corporation] = true
          break
        end
      end
      @tokens[corporation] ||= false
      @tokens[corporation]
    end

    def tokenable_cities(corporation)
      # A list of all tokenable cities per corporation
      return @tokenable_cities[corporation] if @tokenable_cities.key?(corporation)

      cities = []
      compute(corporation) do |node|
        cities << node if node.tokenable?(corporation, free: true)
      end

      @tokenable_cities[corporation] = cities if cities.any?
      cities
    end

    def connected_hexes(corporation)
      compute(corporation) unless @connected_hexes[corporation]
      @connected_hexes[corporation]
    end

    def connected_nodes(corporation)
      compute(corporation) unless @connected_nodes[corporation]
      @connected_nodes[corporation]
    end

    def connected_paths(corporation)
      compute(corporation) unless @connected_paths[corporation]
      @connected_paths[corporation]
    end

    def reachable_hexes(corporation)
      compute(corporation) unless @reachable_hexes[corporation]
      @reachable_hexes[corporation]
    end

    def compute(corporation, routes_only: false)
      hexes = Hash.new { |h, k| h[k] = {} }
      nodes = {}
      paths = {}

      @game.hexes.each do |hex|
        hex.tile.cities.each do |city|
          next unless city.tokened_by?(corporation)

          hex.neighbors.each { |e, _| hexes[hex][e] = true }
          nodes[city] = true
        end
      end

      tokens = nodes.dup

      @game.abilities(corporation, :token) do |ability, c|
        next unless c == corporation # Private company token ability uses round/special.rb.
        next unless ability.teleport_price

        ability.hexes.each do |hex_id|
          @game.hex_by_id(hex_id).tile.cities.each do |node|
            nodes[node] = true
            yield node if block_given?
          end
        end
      end

      @game.abilities(corporation, :teleport) do |ability, _|
        ability.hexes.each do |hex_id|
          hex = @game.hex_by_id(hex_id)
          hex.neighbors.each { |e, _| hexes[hex][e] = true }
          hex.tile.cities.each do |node|
            nodes[node] = true
            yield node if ability.used? && block_given?
          end
        end
      end

      routes = @routes[corporation] || {}

      tokens.keys.each do |node|
        return nil if routes[:route_train_purchase] && routes_only

        visited = tokens.reject { |token, _| token == node }
        local_nodes = {}

        node.walk(visited: visited, corporation: corporation) do |path|
          paths[path] = true
          path.nodes.each do |p_node|
            nodes[p_node] = true
            yield p_node if block_given?
            local_nodes[p_node] = true
          end
          hex = path.hex
          edges = hexes[hex]

          path.exits.each do |edge|
            edges[edge] = true
            hexes[hex.neighbors[edge]][hex.invert(edge)] = true
          end
        end

        next if routes[:route_train_purchase]

        mandatory_nodes = 0
        optional_nodes = 0
        local_nodes.each do |p_node, _|
          case p_node.route
          when :mandatory
            mandatory_nodes += 1
          when :optional
            optional_nodes += 1
          end
        end

        if mandatory_nodes > 1
          routes[:route_available] = true
          routes[:route_train_purchase] = true
          @routes[corporation] = routes
        elsif mandatory_nodes == 1 && optional_nodes.positive?
          routes[:route_available] = true
        end
      end

      hexes.default = nil
      hexes.transform_values!(&:keys)

      @routes[corporation] = routes
      @connected_hexes[corporation] = hexes
      @connected_nodes[corporation] = nodes
      @connected_paths[corporation] = paths
      @reachable_hexes[corporation] = paths.map { |path, _| [path.hex, true] }.to_h
    end
  end
end
