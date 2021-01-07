# frozen_string_literal: true

require_relative '../base'

module Engine
  module Step
    module G18SJ
      class ChoosePriority < Base
        ACTIONS = %w[choose].freeze

        def round_state
          {
            choice_done: false,
          }
        end

        def actions(entity)
          return [] unless choice_available?(entity)

          ACTIONS
        end

        def description
          'Choose Priority'
        end

        def current_entity
          return chooser if choice_available?(chooser)

          super
        end

        def active_entities
          [chooser]
        end

        def choice_name
          'Get priority deal'
        end

        def choices
          @choices = Hash.new { |h, k| h[k] = [] }
          @choices['activate'] = 'Use ability'
          @choices['wait'] = 'Wait for now'
          @choices
        end

        def help
          return super unless choice_available?(chooser)

          "Do you want to activate the ability of #{@game.nils_ericsson.name} to become priority dealer?"
        end

        def active?
          choice_available?(chooser)
        end

        def blocking?
          choice_available?(chooser)
        end

        def purchasable_companies(_entity = nil)
          []
        end

        def process_choose(action)
          @round.choice_done = true
          if action.choice == 'wait'
            @log << "#{chooser.name} declines to use the #{@game.nils_ericsson.name} ability for now"
            return
          end

          @log << "#{chooser.name} becomes the new priority dealer by using #{@game.nils_ericsson.name} ability"
          @round.goto_entity!(chooser)
          @game.priority_deal_chooser = nil
        end

        def choice_available?(entity)
          !@round.choice_done && entity&.player? && entity == chooser && entity != @game.players.first
        end

        def can_sell?
          false
        end

        def ipo_type(_entity) end

        private

        def chooser
          @game.priority_deal_chooser
        end
      end
    end
  end
end
