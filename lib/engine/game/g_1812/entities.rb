# frozen_string_literal: true

module Engine
  module Game
    module G1812
      module Entities
        COMPANIES = [
          {
            name: 'Tanfield Railway',
            sym: 'P1',
            value: 15,
            min_price: 5,
            revenue: 5,
            desc: 'No special abilities.',
            abilities: [],
          },
          {
            name: 'Middleton Railway',
            sym: 'P2',
            value: 20,
            min_price: 15,
            revenue: 5,
            desc: 'A corporation owning the Middleton Railway gains a +£10 bonus for all runs to Leeds (C14).',
            abilities: [{
              type: 'hex_bonus',
              owner_type: 'corporation',
              hexes: ['C14'],
              amount: 10,
            }],
          },
          {
            name: 'Wylam Railway',
            sym: 'P3',
            value: 20,
            min_price: 15,
            revenue: 5,
            desc: 'A corporation owning the Wylam Railway gains a +£10 bonus for all G-train runs to Newcastle Port (F3).',
            abilities: [], # G-train bonus is defined in game.rb revenue_for method
          },
          {
            name: 'Sheffeild & Rotherham Railway',
            sym: 'P4',
            value: 20,
            min_price: 15,
            revenue: 5,
            desc: 'A corporation owning the Sheffeild & Rotherham Railway gains a +£10 bonus for all runs to Sheffield (C18).',
            abilities: [{
              type: 'hex_bonus',
              owner_type: 'corporation',
              hexes: ['C18'],
              amount: 10,
            }],
          },
          {
            name: 'Leeds & Selby Railway',
            sym: 'P5',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Leeds & Selby Railway gains a +£10 bonus for all runs to York (E14). '\
                  'Additionally, the owning corporation may lay 2 extra yellow tiles, in hexes D15 and E17.',
            abilities: [
              {
                type: 'hex_bonus',
                owner_type: 'corporation',
                hexes: ['E14'],
                amount: 10,
              },
              {
                type: 'tile_lay',
                owner_type: 'corporation',
                hexes: %w[D15 E17],
                special: false,
                when: 'track',
                tiles: [],
                cost: 0,
              },
            ],
          },
          {
            name: 'Stephenson’s Engine Works',
            sym: 'P6',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'The owning corporation may exchange this private company for a £40 discount on the purchase of a new train '\
                  'from the supply.',
            abilities: [{
              type: 'train_discount',
              owner_type: 'corporation',
              closed_when_used_up: true,
              discount: 40,
              count: 1,
              trains: %w[2 3 4 5],
            }],
          },
          {
            name: 'Stockton & Darlington Railway',
            sym: 'P7',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Stockton & Darlington Railway gains a +£10 bonus for all runs to Middlesbrough '\
                  '(E8). Additionally, the owning corporation may lay 3 extra yellow tiles, in hexes C8, D9, and E8.',
            abilities: [
              {
                type: 'hex_bonus',
                owner_type: 'corporation',
                hexes: ['E8'],
                amount: 10,
              },
              {
                type: 'tile_lay',
                owner_type: 'corporation',
                hexes: %w[C8 D9 E8],
                special: false,
                when: 'track',
                tiles: [],
                cost: 0,
              },
            ],
          },
          {
            name: 'Stanhope & Tyne Railway',
            sym: 'P8',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Stanhope & Tyne Railway gains a +£10 bonus for all G-train runs to Newcastle '\
                  'Port (F3). Additionally, the owning corporation may lay 2 extra yellow tiles, in hexes C6 and D7.',
            abilities: [{
              type: 'tile_lay',
              owner_type: 'corporation',
              hexes: %w[C6 D7],
              special: false,
              when: 'track',
              tiles: [],
              cost: 0,
            }],
            # G-train bonus is defined in game.rb revenue_for method
          },
          {
            name: 'Whitby & Pickering Railway',
            sym: 'P9',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Whitby & Pickering Railway gains a +£10 bonus for all G-train runs to Whitby '\
                  'Port (H9). Additionally, the owning corporation may lay 3 extra yellow tiles, in hexes F13, G12, and G10.',
            abilities: [{
              type: 'tile_lay',
              owner_type: 'corporation',
              hexes: %w[F13 G10 G12],
              special: false,
              when: 'track',
              tiles: [],
              cost: 0,
            }],
            # G-train bonus is defined in game.rb revenue_for method
          },
          {
            name: 'Newcastle & Carlisle Railway',
            sym: 'P10',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Newcastle & Carlisle Railway gains a +£20 bonus for all runs to Carlisle (A8). '\
                  'Additionally, the owning corporation may lay 3 extra yellow tiles, in hexes B3, C4, and D3.',
            abilities: [
              {
                type: 'hex_bonus',
                owner_type: 'corporation',
                hexes: ['A8'],
                amount: 20,
              },
              {
                type: 'tile_lay',
                owner_type: 'corporation',
                hexes: %w[B3 C4 D3],
                special: false,
                when: 'track',
                tiles: [],
                cost: 0,
              },
            ],
          },
          {
            name: 'Hull Docks Company',
            sym: 'P11',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Newcastle & Carlisle Railway gains a +£20 bonus for all runs to Hull (G16).',
            abilities: [
              {
                type: 'hex_bonus',
                owner_type: 'corporation',
                hexes: ['G16'],
                amount: 20,
              },
              {
                type: 'close',
                when: 'never',
              },
            ],
          },
          {
            name: 'Hartlepool Docks Company',
            sym: 'P12',
            value: 40,
            min_price: 30,
            revenue: 10,
            desc: 'A corporation owning the Hull Docks Company gains a +£20 bonus for all G-train runs to Hartlepool '\
                  'Port (G6). Additionally, the owning corporation may lay 1 extra yellow tile, in hex F7.',
            abilities: [
              {
                type: 'tile_lay',
                owner_type: 'corporation',
                hexes: ['F7'],
                special: false,
                when: 'track',
                tiles: [],
                cost: 0,
              },
              {
                type: 'close',
                when: 'never',
              },
              # G-train bonus is defined in game.rb revenue_for method
            ],
          },
        ].freeze

        CORPORATIONS = [
          {
            sym: 'GCR',
            name: 'Great Central Railway',
            logo: '1812/GCR',
            tokens: [0, 40, 100, 100],
            type: 'public',
            color: '#025aaa',
          },
          {
            sym: 'GNR',
            name: 'Great Northern Railway',
            logo: '1812/GNR',
            tokens: [0, 40, 100, 100],
            type: 'public',
            color: '#32763f',
          }, {
            sym: 'LYR',
            name: 'Lancashire & Yorkshire Railway',
            logo: '1812/LYR',
            tokens: [0, 40, 100, 100],
            type: 'public',
            color: '#FFFFFFF',
          },
          {
            sym: 'MR',
            name: 'Midland Railway',
            logo: '1812/MR',
            tokens: [0, 40, 100, 100],
            type: 'public',
            color: '#d1232a',
          },
          {
            sym: 'NER',
            name: 'North Eastern Railway',
            logo: '1812/NER',
            tokens: [0, 40, 100, 100],
            color: :'#FFF500',
            text_color: 'black',
          }
        ].freeze

        MINORS = [
          {
            sym: '1',
            name: 'Doncaster & Peterborough Railway',
            logo: '1812/1',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'E20',
            color: '#777777',
          },
          {
            sym: '2',
            name: 'Hull & Selby Railway',
            logo: '1812/2',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'G16',
            color: '#777777',
          },
          {
            sym: '3',
            name: 'Leeds Northern Railway',
            logo: '1812/3',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'C14',
            city: 1,
            color: '#777777',
          },
          {
            sym: '4',
            name: 'Manchester & Leeds Railway',
            logo: '1812/4',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'C14',
            city: 0,
            color: '#777777',
          },
          {
            sym: '5',
            name: 'Newcastle & Berwick Railway',
            logo: '1812/5',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'E4',
            city: 1,
            color: '#777777',
          },
          {
            sym: '6',
            name: 'Newcastle & Darlington Railway',
            logo: '1812/6',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'C14',
            city: 0,
            color: '#777777',
          },
          {
            sym: '7',
            name: '	North Midland Railway',
            logo: '1812/7',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'C20',
            city: 0,
            color: '#777777',
          },
          {
            sym: '8',
            name: 'Sheffield, Ashton & Manchester Railway',
            logo: '1812/8',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'C18',
            color: '#777777',
          },
          {
            sym: '9',
            name: 'York & Darlington Railway',
            logo: '1812/9',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'E14',
            color: '#777777',
          },
          {
            sym: '10',
            name: 'York & North Midland Railway	',
            logo: '1812/10',
            tokens: [0],
            shares: [100],
            type: 'minor',
            coordinates: 'E14',
            city: 0,
            color: '#777777',
          },
        ].freeze
      end
    end
  end
end
