# frozen_string_literal: true

module Engine
  module Game
    module G18TS
      module Map
        LAYOUT = :flat
        AXES = { x: :letter, y: :number }.freeze
        LOCATION_NAMES = {
          # unit 4
          # Inverness is moved to A5 in location_name in game.rb
          'c8' => 'Wick',
          'a2' => 'Ullapool',
          'a4' => 'Dingwall',
          'a6' => 'Invergordon',
          'a8' => 'Elgin',
          'a12' => 'Fraserburgh',
          'B0' => 'Malaig',
          # unit 3
          'B8' => 'Inverness',
          'B12' => 'Aberdeen',
          'C7' => 'Pitlochry',
          'D10' => 'Montrose',
          'E1' => 'Oban',
          'E7' => 'Perth',
          'E9' => 'Dundee',
          'F2' => 'Helensburgh & Gourock',
          'F4' => 'Dumbarton',
          'F6' => 'Stirling',
          'F8' => 'Dunfermline & Kirkaldy',
          'F10' => 'Anstruther',
          'G3' => 'Greenock',
          'G5' => 'Glasgow',
          # G7 now handled in game.rb for variant DB3
          'G9' => 'Edinburgh & Leith',
          'G13' => 'Berwick',
          'H4' => 'Kilmarnock & Ayr',
          'H6' => 'Motherwell',
          'H10' => 'Galashiels',
          'I13' => 'Morpeth & Blythe',
          'J2' => 'Stranraer',
          'J6' => 'Dumfries',
          'J10' => 'Carlisle',
          'J14' => 'Newcastle upon Tyne & Sunderland',
          'K7' => 'Maryport',
          'K13' => 'Durham',
          'K15' => 'Stockton on Tees & Middlesbrough',
          # unit 2
          'L14' => 'Darlington',
          'L18' => 'Scarborough',
          'M9' => 'Barrow & Morecombe',
          'M15' => 'Harrogate & York',
          'N10' => 'Preston',
          'N12' => 'Burnley & Halifax',
          'N14' => 'Bradford & Leeds',
          'N18' => 'Hull',
          'O9' => 'Liverpool',
          'O11' => 'Manchester',
          'O15' => 'Barnsley & Doncaster',
          'P16' => 'Sheffield & Rotherham',
          'P18' => 'Lincoln',
          'Q11' => 'Crewe',
          'Q13' => 'Newcastle & Hanley',
          'Q15' => 'Derby',
          'Q17' => 'Nottingham',
          # unit 1
          'R10' => 'Shrewsbury',
          'R12' => 'Wolverhampton & Walsall',
          'R16' => 'Leicester',
          'R20' => 'Peterborough',
          'R24' => 'Norwich',
          'R26' => 'Great Yarmouth',
          'S13' => 'Birmingham',
          'S15' => 'Northampton',
          'T16' => 'Wolverton',
          'T20' => 'Cambridge',
          'T24' => 'Ipswich',
          'U11' => 'Gloucester',
          'U23' => 'Colchester',
          'U25' => 'Harwich',
          'V8' => 'Cardiff & Newport',
          'V10' => 'Bristol',
          'V14' => 'Swindon',
          'V16' => 'Reading',
          'V20' => 'London',
          'V22' => 'Southend',
          'W11' => 'Bath & Trowbridge',
          'W19' => 'Kingston & Reigate',
          'W23' => 'Ashford',
          'W25' => 'Dover',
          'X14' => 'Southampton',
          'X16' => 'Gosport & Portsmouth',
          'X20' => 'Brighton',
          'X22' => 'Hastings',
          'Y11' => 'Weymouth',
          'Y13' => 'Bournemouth',
          # R1
          'P4' => 'Holyhead',
          'Q5' => 'Portmodoc',
          'S5' => 'Aberystwyth',
          'T2' => 'Fishguard',
          'U1' => 'MilfordHaven',
          'V6' => 'Swansea',
          # R2
          'X4' => 'Barnstaple',
          'Y7' => 'Exeter',
          'Z2' => 'Fowey',
          'Z4' => 'Devonport & Plymouth',
          'Z6' => 'Torquay',
          'AA-1' => 'Penzance',
          'AA1' => 'Falmouth',
          # R3
          'Q23' => 'Melton Constable',
        }.freeze

        # rubocop:disable Layout/LineLength
        UNIT1_TILES = {
          '1' => 1,
          '2' => 1,
          '3' => 1,
          '4' => 3,
          '5' => 2,
          '6' => 2,
          '7' => 2,
          '8' => 8,
          '9' => 7,
          '55' => 1,
          '56' => 1,
          '12' => 2,
          '13' => 1,
          '14' => 2,
          '15' => 2,
          '16' => 1,
          '19' => 1,
          '20' => 1,
          '23' => 3,
          '24' => 3,
          '25' => 1,
          '26' => 1,
          '27' => 1,
          '28' => 1,
          '29' => 1,
          '52' => 2,
          '87' => 1,
          '88' => 1,
          '32' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:70;city=revenue:70;city=revenue:70;city=revenue:70;city=revenue:70;city=revenue:70;path=a:0,b:_0;path=a:1,b:_1;path=a:2,b:_2;path=a:3,b:_3;path=a:4,b:_4;path=a:5,b:_5;label=LD',
          },
          '34' => 1,
          '38' => 2,
          '41' => 1,
          '42' => 1,
          '45' => 1,
          '46' => 1,
          '47' => 1,
          '64' => 1,
          '65' => 1,
          '66' => 1,
          '67' => 1,
          '68' => 1,
        }.deep_freeze
        # rubocop:enable Layout/LineLength

        UNIT2_TILES = {
          '1' => 1,
          '2' => 1,
          '3' => 1,
          '4' => 1,
          '5' => 2,
          '6' => 2,
          '7' => 3,
          '8' => 4,
          '9' => 4,
          '55' => 1,
          '56' => 1,
          '69' => 1,
          '114' =>
          {
            'count' => 1,
            'color' => 'yellow',
            'code' => 'town=revenue:10;town=revenue:10;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_1;path=a:5,b:_1',
          },
          '12' => 3,
          '14' => 2,
          '15' => 2,
          '16' => 1,
          '18' => 1,
          '19' => 2,
          '20' => 1,
          '23' => 2,
          '24' => 2,
          '25' => 1,
          '26' => 1,
          '27' => 1,
          '28' => 1,
          '29' => 1,
          '52' => 2,
          '33' => 1,
          '34' => 1,
          '38' => 3,
          '39' => 1,
          '40' => 1,
          '41' => 1,
          '42' => 1,
          '43' => 1,
          '44' => 1,
          '47' => 1,
          '64' => 1,
          '65' => 1,
          '66' => 1,
          '67' => 1,
          '68' => 1,
          '49' => 1,
          '50' => 1,
          '51' => 2,
        }.deep_freeze

        UNIT3_TILES = {
          '1' => 1,
          '2' => 1,
          '3' => 1,
          '4' => 3,
          '5' => 2,
          '6' => 2,
          '7' => 3,
          '8' => 6,
          '9' => 5,
          '55' => 1,
          '56' => 1,
          '115' => 1,
          '12' => 2,
          '13' => 1,
          '14' => 3,
          '15' => 3,
          '16' => 1,
          '19' => 1,
          '23' => 3,
          '24' => 3,
          '26' => 1,
          '27' => 1,
          '28' => 1,
          '29' => 1,
          '52' => 2,
          '81' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'path=a:0,b:2;path=a:2,b:4;path=a:4,b:0',
          },
          '34' => 1,
          '38' => 2,
          '39' => 1,
          '41' => 1,
          '42' => 1,
          '43' => 1,
          '44' => 1,
          '45' => 1,
          '46' => 1,
          '47' => 1,
          '63' => 2,
          '66' => 2,
          '67' => 1,
          '118' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40;city=revenue:40;path=a:0,b:_0;path=a:_0,b:1;path=a:2,b:_1;path=a:_1,b:3;label=OO',
          },
        }.deep_freeze

        R1_TILES = {
          '2' => 1,
          '3' => 1,
          '4' => 1,
          '6' => 2,
          '7' => 2,
          '8' => 2,
          '69' => 1,
          '10' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'city=revenue:30,loc:0;city=revenue:30,loc:3;path=a:5,b:_0;path=a:2,b:_1;label=OO',
          },
          '11' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'town=revenue:10,visit_cost:0;path=a:0,b:2;path=a:2,b:_0;path=a:_0,b:4;path=a:0,b:4;label=HALT',
          },
          '13' => 1,
          '14' => 1,
          '23' => 1,
          '24' => 1,
          '35' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40;city=revenue:40;path=a:0,b:_0;path=a:_0,b:2;path=a:1,b:_1;path=a:_1,b:3;label=OO',
          },
          '37' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40,loc:0;city=revenue:40,loc:3;path=a:2,b:_0;path=a:5,b:_1;path=a:2,b:5;label=OO',
          },
          '38' => 1,
          '66' => 1,
        }.deep_freeze

        R2_TILES = {
          '3' => 1,
          '58' => 1,
          '115' => 1,
          '10' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'city=revenue:30,loc:0;city=revenue:30,loc:3;path=a:5,b:_0;path=a:2,b:_1;label=OO',
          },
          '35' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40;city=revenue:40;path=a:0,b:_0;path=a:_0,b:2;path=a:1,b:_1;path=a:_1,b:3;label=OO',
          },
          '37' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40,loc:0;city=revenue:40,loc:3;path=a:2,b:_0;path=a:5,b:_1;path=a:2,b:5;label=OO',
          },
        }.deep_freeze

        R3_TILES = {
          '8' => 1,
          '9' => 2,
          '11' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'town=revenue:10,visit_cost:0;path=a:0,b:2;path=a:2,b:_0;path=a:_0,b:4;path=a:0,b:4;label=HALT',
          },
          '14' => 1,
        }.deep_freeze

        K1_TILES = {
          '17' => 1,
          '18' => 1,
          '21' => 1,
          '22' => 1,
          '28' => 1,
          '29' => 1,
          '30' => 1,
          '31' => 1,
          '39' => 1,
          '40' => 1,
          '41' => 1,
          '42' => 1,
          '43' => 1,
          '44' => 1,
          '47' => 1,
        }.freeze

        # rubocop:disable Layout/LineLength
        K3_TILES = {
          '48' =>
          {
            'count' => 1,
            'color' => 'gray',
            'code' => 'city=revenue:100;city=revenue:100;city=revenue:100;city=revenue:100;city=revenue:100;city=revenue:100;path=a:0,b:_0;path=a:1,b:_1;path=a:2,b:_2;path=a:3,b:_3;path=a:4,b:_4;path=a:5,b:_5;label=LD',
          },
          '49' => 1,
          '50' => 2,
          '51' => 3,
          '60' => 2,
          '166' => 4,
          '167' => 4,
          '168' =>
          {
            'count' => 2,
            'color' => 'gray',
            'code' => 'city=revenue:70,slots:3;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;label=OO',
          },
        }.deep_freeze
        # rubocop:enable Layout/LineLength

        K5_TILES = {
          '15' => 1,
          '69' => 1,
          '119' => 1,
        }.freeze

        K6_TILES = {
          '58' => 2,
          '198' =>
          {
            'count' => 1,
            'color' => 'yellow',
            'code' => 'town=revenue:10;town=revenue:10;path=a:0,b:_0;path=a:5,b:_0;path=a:2,b:_1;path=a:4,b:_1;label=OO',
          },
          '199' =>
          {
            'count' => 1,
            'color' => 'yellow',
            'code' => 'town=revenue:10;town=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_1;path=a:4,b:_1;label=OO',
          },
          '11' =>
          {
            'count' => 2,
            'color' => 'green',
            'code' => 'town=revenue:10,visit_cost:0;path=a:0,b:2;path=a:2,b:_0;path=a:_0,b:4;path=a:0,b:4;label=HALT',
          },
          '82' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'path=a:0,b:1;path=a:1,b:3;path=a:0,b:3',
          },
          '83' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'path=a:0,b:5;path=a:5,b:3;path=a:0,b:3',
          },
          '119' => 2,
          '200' => 2,
        }.deep_freeze

        # rubocop:disable Layout/LineLength
        D1_TILES = {
          '7' => 2,
          '58' => 2,
          '115' => 2,
          '10' =>
          {
            'count' => 3,
            'color' => 'green',
            'code' => 'city=revenue:30,loc:0;city=revenue:30,loc:3;path=a:5,b:_0;path=a:2,b:_1;label=OO',
          },
          '11' =>
          {
            'count' => 3,
            'color' => 'green',
            'code' => 'town=revenue:10,visit_cost:0;path=a:0,b:2;path=a:2,b:_0;path=a:_0,b:4;path=a:0,b:4;label=HALT',
          },
          '17' => 1,
          '18' => 1,
          '20' => 1,
          '21' => 1,
          '22' => 1,
          '30' => 1,
          '31' => 1,
          '82' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'path=a:0,b:1;path=a:1,b:3;path=a:0,b:3',
          },
          '83' =>
          {
            'count' => 1,
            'color' => 'green',
            'code' => 'path=a:0,b:5;path=a:5,b:3;path=a:0,b:3',
          },
          '35' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40;city=revenue:40;path=a:0,b:_0;path=a:_0,b:2;path=a:1,b:_1;path=a:_1,b:3;label=OO',
          },
          '36' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40;city=revenue:40;path=a:1,b:_0;path=a:_0,b:3;path=a:0,b:_1;path=a:_1,b:4;label=OO',
          },
          '37' =>
          {
            'count' => 1,
            'color' => 'brown',
            'code' => 'city=revenue:40,loc:0;city=revenue:40,loc:3;path=a:2,b:_0;path=a:5,b:_1;path=a:2,b:5;label=OO',
          },
          '38' => 1,
          '39' => 1,
          '40' => 1,
          '43' => 1,
          '44' => 1,
          '47' => 1,
          '119' => 2,
          '174' =>
          {
            'count' => 2,
            'color' => 'brown',
            'code' => 'city=revenue:50,loc:0.5;city=revenue:50,loc:4.5;path=a:0,b:_0;path=a:1,b:_0;path=a:4,b:_1;path=a:5,b:_1;path=a:1,b:4;label=OO',
          },
          '200' => 2,
        }.deep_freeze

        DB1_UNIT3_ANTITILES = {
          '14' => -1,
          '15' => -1,
        }.freeze

        DB3_TILES = {
          '58' => 1,
          '206' => 1,
        }.freeze

        # rubocop:enable Layout/LineLength

        # This includes upgrades for the DB1 kit tiles 887/888 and DB3 #206.
        # Games without DB kits lack those tiles so are unaffected.
        EXTRA_UPGRADES = {
          # gentle curve to three curves with a halt
          '8' => %w[11],
          # yellow double-dit to green K or X city
          '1' => %w[14 888],
          '2' => %w[15 887],
          '55' => %w[14 888],
          '56' => %w[15 887],
          '69' => %w[119],
          '114' => %w[15 887],
          '198' => %w[119],
          '199' => %w[119],
          '887' => %w[63 166],
          '888' => %w[63 166],
          # yellow single-dit to green city (also brown/green city)
          '3' => %w[12 14 15 119 206],
          '4' => %w[14 15 119 206],
          '58' => %w[12 13 14 15 119 206],
          # not a dit at all but a yellow city, how exciting
          '115' => '206',
          # HACK: for 119 (green/brown tile that upgrades to gray)
          '119' => %w[51],
        }.deep_freeze

        ILLEGAL_UPGRADES = {
          '81' => %w[40],
          '82' => %w[41],
          '83' => %w[42],
        }.deep_freeze

        def append_game_tiles(gtiles, new_tiles)
          new_tiles.each do |k, v|
            if gtiles[k] && v.is_a?(Hash)
              raise GameError, "conflicting tile definitions for tile #{k}" unless gtiles[k].is_a?(Hash)

              gtiles[k]['count'] += v['count']
            elsif gtiles[k]
              raise GameError, "conflicting tile definitions for tile #{k}" if gtiles[k].is_a?(Hash)

              gtiles[k] += v
            else
              gtiles[k] = v.dup
            end
            number = gtiles[k].is_a?(Hash) ? gtiles[k]['count'] : gtiles[k]
            # this was if number<=0 raise GameError ... end but rubocop gives
            # a complaint that seems frankly barking to me
            next if number.positive?
            raise GameError, "negative number of tile #{k}" if number.negative?

            gtiles.delete(k)
          end
        end

        def game_tiles
          gtiles = {}
          append_game_tiles(gtiles, UNIT1_TILES) if @units[1]
          append_game_tiles(gtiles, UNIT2_TILES) if @units[2]
          append_game_tiles(gtiles, UNIT3_TILES) if @units[3]
          append_game_tiles(gtiles, R1_TILES) if @regionals[1]
          append_game_tiles(gtiles, R2_TILES) if @regionals[2]
          append_game_tiles(gtiles, R3_TILES) if @regionals[3]
          append_game_tiles(gtiles, K1_TILES) if @kits[1]
          append_game_tiles(gtiles, K3_TILES) if @kits[3]
          append_game_tiles(gtiles, K5_TILES) if @kits[5]
          append_game_tiles(gtiles, K6_TILES) if @kits[6]
          append_game_tiles(gtiles, D1_TILES) if @optional_rules.include?(:d1)
          db1_tiles(gtiles) if @optional_rules.include?(:db1)
          append_game_tiles(gtiles, DB3_TILES) if @optional_rules.include?(:db3)
          gtiles
        end

        def db1_tiles(gtiles)
          gtiles.delete('87')
          gtiles.delete('88')
          eightysevens = ((@units[1] ? 2 : 0) + (@units[3] ? 1 : 0))
          gtiles['887'] = eightysevens
          gtiles['888'] = eightysevens
          append_game_tiles(gtiles, DB1_UNIT3_ANTITILES) if @units[3]
          gtiles
        end

        # rubocop:disable Layout/LineLength

        FULL_GAME_HEXES = {
          white: {
            %w[D18 G15 I19 J12 K11 L12 L10 N8 O9 O19 P6 P10 P14 Q3 Q5 Q7 Q9 Q11 Q17 Q19 R6 R10 R14 R16 R18 S7 S9 S11 S13 S15 T10 T16 U11 U13 U15 V4 V10 V16 V18 V20 W19 S11 U7] =>'',
            %w[H18 I15 I23 J16 J18 K15 K17] =>'upgrade=cost:100,terrain:mountain',
            %w[C17 D20 E21 N14 V22 W23 O21 Q21 R20] =>'upgrade=cost:100,terrain:water',
            %w[N18 M9 M11 M15] =>'upgrade=cost:40,terrain:water',
            ['N14'] =>'upgrade=cost:60,terrain:water',
            ['N16'] =>'upgrade=cost:120,terrain:water',
            %w[D16 F20 N10 P8 P18 P2 Q13 R8 R4 V6 S17 S5 T12 W17 X22 I21] =>'town=revenue:0',           
            ['F22'] =>'town=revenue:0;upgrade=cost:100,terrain:water',
            ['H16'] =>'town=revenue:0;upgrade=cost:100,terrain:mountain',
            %w[G19 H22 I13 K13 L16 O15 U17 U9] =>'town=revenue:0;town=revenue:0',
            ['F18'] =>'town=revenue:0;town=revenue:0;upgrade=cost:40,terrain:water',
            ['R20'] =>'town=revenue:0;town=revenue:0;upgrade=cost:100,terrain:water',
            %w[E17 G23 H20 J14 L18 O13 O11 P12 P4 V14 V8 W21] =>'city=revenue:0',
            ['P20'] =>'city=revenue:20;path=a:3,b:_0',
            ['I17'] =>'city=revenue:0;upgrade=cost:100,terrain:mountain',
            ['U5'] =>'city=revenue:0;upgrade=cost:40,terrain:water',
            },
            gray: {
            ['C15'] =>'city=revenue:30,loc:5.5;path=a:0,b:_0;path=a:5,b:_0',
            ['C19'] =>'city=revenue:20,loc:4.5;path=a:5,b:_0;path=a:4,b:_0',
            ['E19'] =>'city=revenue:10,slots:2;path=a:1,b:_0;path=a:2,b:_0;path=a:4,b:_0;path=a:5,b:_0',
            ['F24'] =>'town=revenue:10,loc:3;town=revenue:10,loc:4;path=a:3,b:_0;path=a:4,b:_1',
            ['F16'] =>'town=revenue:10,loc:1;path=a:1,b:_0;path=a:4,b:5',
            ['J20'] =>'city=revenue:10,loc:2;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0',
            ['K19'] =>'city=revenue:10,loc:center;town=revenue:10;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:3,b:_1;path=a:4,b:_1',
            ['M13'] =>'city=revenue:20,loc:0;city=revenue:20,loc:3;path=a:0,b:_0;path=a:4,b:_0;path=a:5,b:_0;path=a:1,b:_1;path=a:2,b:_1;path=a:3,b:_1',
            ['N20'] =>'path=a:3,b:4;path=a:3,b:5',
            ['O5'] =>'city=revenue:10,loc:4.5;path=a:5,b:_0;path=a:4,b:_0',
            ['S3'] =>'city=revenue:20;path=a:0,b:_0',
            ['S21'] =>'city=revenue:20;path=a:2,b:_0;path=a:3,b:_0',
            ['T6'] =>'city=revenue:20,loc:3;path=a:0,b:_0;path=a:0,b:2;path=a:5,b:4;path=a:0,b:1',
            ['U19'] =>'city=revenue:10,loc:3.5;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;path=a:2,b:5',
            ['U3'] =>'city=revenue:20,loc:5.5;path=a:0,b:_0;path=a:5,b:_0',
            ['W15'] =>'city=revenue:20;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0',
            },
            green: {
            ['G21'] =>'city=revenue:40,loc:0;city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:0,b:_0;path=a:2,b:_1;path=a:4,b:_2',
            ['M17'] =>'city=revenue:40,loc:1;city=revenue:40,loc:3;city=revenue:40,loc:5;path=a:1,b:_0;path=a:3,b:_1;path=a:5,b:_2',
            ['M19'] =>'city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:2,b:_0;path=a:4,b:_1',
            ['Q15'] =>'city=revenue:40,loc:0;city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:0,b:_0;path=a:2,b:_1;path=a:4,b:_2',
            ['T18'] =>'city=revenue:30;path=a:3,b:_0;path=a:5,b:_0',
            ['T8'] =>'city=revenue:50;city=revenue:50;city=revenue:50;city=revenue:50;city=revenue:50;city=revenue:50;path=a:0,b:_0;path=a:1,b:_1;path=a:2,b:_2;path=a:3,b:_3;path=a:4,b:_4;path=a:5,b:_5;label=NYC',
            },
            yellow: {
            ['G17'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['H14'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['L14'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['N12'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['P16'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['S19'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['V12'] =>'city=revenue:0;city=revenue:0;label=OO',
            },
            brown: {
            ['O17'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:4,b:_0',
            ['R12'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:4,b:_0',
            ['T14'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:3,b:_0;path=a:4,b:_0',
            },
            blue: {
            ['W9'] =>'path=a:1,b:2;',
            },
        }.deep_freeze

        UNIT1_HEXES = {
          white: {
            %w[J12 K11 L12 L10 N8 O9 O19 P6 P10 P14 Q3 Q5 Q7 Q9 Q11 Q17 Q19 R6 R10 R14 R16 R18 S7 S9 S11 S13 S15 T10 T16 U11 U13 U15 V4 V10 V16 V18 V20 W19 S11 U7] =>'',
            %w[I15 J16 K15 K17] =>'upgrade=cost:100,terrain:mountain',
            %w[N14 V22 W23 O21 Q21 R20] =>'upgrade=cost:100,terrain:water',
            %w[N18 M9 M11 M15] =>'upgrade=cost:40,terrain:water',
            ['N14'] =>'upgrade=cost:60,terrain:water',
            ['N16'] =>'upgrade=cost:120,terrain:water',
            %w[N10 P8 P18 P2 Q13 R8 R4 V6 S17 S5 T12 W17 X22] =>'town=revenue:0',                    
            %w[I13 K13 L16 O15 U17 U9] =>'town=revenue:0;town=revenue:0',
            ['R20'] =>'town=revenue:0;town=revenue:0;upgrade=cost:100,terrain:water',
            %w[J14 L18 O13 O11 P12 P4 V14 V8 W21] =>'city=revenue:0',
            ['P20'] =>'city=revenue:20;path=a:3,b:_0',
            ['U5'] =>'city=revenue:0;upgrade=cost:40,terrain:water',
            },
            gray: {
            ['K19'] =>'city=revenue:10,loc:center;town=revenue:10;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:3,b:_1;path=a:4,b:_1',
            ['M13'] =>'city=revenue:20,loc:0;city=revenue:20,loc:3;path=a:0,b:_0;path=a:4,b:_0;path=a:5,b:_0;path=a:1,b:_1;path=a:2,b:_1;path=a:3,b:_1',
            ['N20'] =>'path=a:3,b:4;path=a:3,b:5',
            ['O5'] =>'city=revenue:10,loc:4.5;path=a:5,b:_0;path=a:4,b:_0',
            ['S3'] =>'city=revenue:20;path=a:0,b:_0',
            ['S21'] =>'city=revenue:20;path=a:2,b:_0;path=a:3,b:_0',
            ['T6'] =>'city=revenue:20,loc:3;path=a:0,b:_0;path=a:0,b:2;path=a:5,b:4;path=a:0,b:1',
            ['U19'] =>'city=revenue:10,loc:3.5;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;path=a:2,b:5',
            ['U3'] =>'city=revenue:20,loc:5.5;path=a:0,b:_0;path=a:5,b:_0',
            ['W15'] =>'city=revenue:20;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0',
            },
            green: {
            ['M17'] =>'city=revenue:40,loc:1;city=revenue:40,loc:3;city=revenue:40,loc:5;path=a:1,b:_0;path=a:3,b:_1;path=a:5,b:_2',
            ['M19'] =>'city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:2,b:_0;path=a:4,b:_1',
            ['Q15'] =>'city=revenue:40,loc:0;city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:0,b:_0;path=a:2,b:_1;path=a:4,b:_2',
            ['T18'] =>'city=revenue:30;path=a:3,b:_0;path=a:5,b:_0',
            ['T8'] =>'city=revenue:50;city=revenue:50;city=revenue:50;city=revenue:50;city=revenue:50;city=revenue:50;path=a:0,b:_0;path=a:1,b:_1;path=a:2,b:_2;path=a:3,b:_3;path=a:4,b:_4;path=a:5,b:_5;label=NYC',
            },
            yellow: {
            ['H14'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['L14'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['N12'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['P16'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['S19'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['V12'] =>'city=revenue:0;city=revenue:0;label=OO',
            },
            brown: {
            ['O17'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:4,b:_0',
            ['R12'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:4,b:_0',
            ['T14'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:3,b:_0;path=a:4,b:_0',
            },
            blue: {
            ['W9'] =>'path=a:1,b:2;',
            },
        }.deep_freeze

        UNIT2_HEXES = {
          white: {
            %w[D18 G15 I19 J12 K11 L12 L10 N8 O9 O19] =>'',
            %w[H18 I15 I23 J16 J18 K15 K17] =>'upgrade=cost:100,terrain:mountain',
            %w[C17 D20 E21 N14] =>'upgrade=cost:100,terrain:water',
            %w[N18 M9 M11 M15] =>'upgrade=cost:40,terrain:water',
            ['N14'] =>'upgrade=cost:60,terrain:water',
            ['N16'] =>'upgrade=cost:120,terrain:water',
            %w[D16 F20 I21 N10] =>'town=revenue:0',           
            ['F22'] =>'town=revenue:0;upgrade=cost:100,terrain:water',
            ['H16'] =>'town=revenue:0;upgrade=cost:100,terrain:mountain',
            %w[G19 H22 I13 K13 L16 O15] =>'town=revenue:0;town=revenue:0',
            ['F18'] =>'town=revenue:0;town=revenue:0;upgrade=cost:40,terrain:water',
            %w[E17 G23 H20 J14 L18 O13 O11] =>'city=revenue:0',
            ['I17'] =>'city=revenue:0;upgrade=cost:100,terrain:mountain',
            },
            gray: {
            ['C15'] =>'city=revenue:30,loc:5.5;path=a:0,b:_0;path=a:5,b:_0',
            ['C19'] =>'city=revenue:20,loc:4.5;path=a:5,b:_0;path=a:4,b:_0',
            ['E19'] =>'city=revenue:10,slots:2;path=a:1,b:_0;path=a:2,b:_0;path=a:4,b:_0;path=a:5,b:_0',
            ['F24'] =>'town=revenue:10,loc:3;town=revenue:10,loc:4;path=a:3,b:_0;path=a:4,b:_1',
            ['F16'] =>'town=revenue:10,loc:1;path=a:1,b:_0;path=a:4,b:5',
            ['J20'] =>'city=revenue:10,loc:2;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0',
            ['K19'] =>'city=revenue:10,loc:center;town=revenue:10;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:3,b:_1;path=a:4,b:_1',
            ['M13'] =>'city=revenue:20,loc:0;city=revenue:20,loc:3;path=a:0,b:_0;path=a:4,b:_0;path=a:5,b:_0;path=a:1,b:_1;path=a:2,b:_1;path=a:3,b:_1',
            ['N20'] =>'path=a:3,b:4;'
            },
            green: {
            ['G21'] =>'city=revenue:40,loc:0;city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:0,b:_0;path=a:2,b:_1;path=a:4,b:_2',
            ['M17'] =>'city=revenue:40,loc:1;city=revenue:40,loc:3;city=revenue:40,loc:5;path=a:1,b:_0;path=a:3,b:_1;path=a:5,b:_2',
            ['M19'] =>'city=revenue:40,loc:2;city=revenue:40,loc:4;path=a:2,b:_0;path=a:4,b:_1',
            },
            yellow: {
            ['G17'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['H14'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['L14'] =>'city=revenue:0;city=revenue:0;label=OO',
            ['N12'] =>'city=revenue:0;city=revenue:0;label=OO',
            },
            brown: {
            ['O17'] =>'city=revenue:10;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0',
            },
        }.deep_freeze

        UNIT3_HEXES = {
          white: {
            %w[C11
               G11
               H12
               H14
               I5
               J8] => '',
            %w[C9
               D2
               D4
               D6
               D8
               E3
               E5
               H8
               H10
               I3
               I7
               I9
               I11
               J4
               J12
               K9
               K11] => 'upgrade=cost:100,terrain:mountain',
            ['C7'] => 'town=revenue:0;upgrade=cost:100,terrain:mountain',
            ['D10'] => 'town=revenue:0',
            ['E9'] => 'city=revenue:0;upgrade=cost:80,terrain:water',
            ['F4'] => 'town=revenue:0;upgrade=cost:140,terrain:mountain|water',
            ['F6'] => 'town=revenue:0',
            ['F8'] => 'town=revenue:0;town=revenue:0;upgrade=cost:120,terrain:water',
            ['G3'] => 'city=revenue:0',
            ['G7'] => 'town=revenue:0;town=revenue:0',
            ['H4'] => 'town=revenue:0;town=revenue:0',
            ['H6'] => 'city=revenue:0',
            ['I13'] => 'town=revenue:0;town=revenue:0',
            ['J2'] => 'city=revenue:0',
            ['J6'] => 'city=revenue:0',
            ['J10'] => 'city=revenue:0',
            ['K13'] => 'town=revenue:0',
            ['K15'] => 'town=revenue:0;town=revenue:0',
          },
          yellow: {
            ['G9'] => 'city=revenue:0,loc:1;city=revenue:0,loc:3;label=OO',
            ['J14'] => 'city=revenue:0,loc:5;city=revenue:0,loc:2;upgrade=cost:40,terrain:water;label=OO',
          },
          green: {
            ['G5'] => 'city=revenue:40;path=a:1,b:_0;city=revenue:40;path=a:3,b:_1;city=revenue:40;path=a:5,b:_2;label=BGM',
          },
          sepia: {
            ['B8'] => 'city=revenue:20,loc:5.5;path=a:0,b:_0;path=a:5,b:_0',
            ['B12'] => 'city=revenue:30;path=a:0,b:_0',
            ['E1'] => 'city=revenue:20,loc:2.5;path=a:3,b:_0;path=a:4,b:_0',
            ['E7'] => 'city=revenue:10,slots:2;path=a:0,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:5,b:_0',
            ['F2'] => 'town=revenue:10,loc:4;path=a:4,b:_0;town=revenue:10,loc:1;path=a:5,b:_1',
            ['F10'] => 'town=revenue:10,loc:2;path=a:2,b:_0;path=a:5,b:0',
            ['K7'] => 'city=revenue:10,loc:3;path=a:3,b:_0;path=a:4,b:_0;path=a:5,b:_0',
          },
        }.deep_freeze
     
        R1_HEXES = {
          white: {
            %w[R6
               T4
               U3
               U5] => '',
            %w[Q7
               S7
               T6] => 'upgrade=cost:100,terrain:mountain',
            ['P6'] => 'upgrade=cost:40,terrain:water',
            %w[Q5
               S5] => 'town=revenue:0',
            ['U7'] => 'town=revenue:0;town=revenue:0',
            %w[R8
               T2] => 'city=revenue:0',
          },
          sepia: {
            ['P4'] => 'city=revenue:20;path=a:4,b:_0;path=a:5,b:_0',
            ['U1'] => 'city=revenue:10;path=a:3,b:_0;path=a:4,b:_0',
            ['V6'] => 'city=revenue:20;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0',
          },
        }.deep_freeze

        R2_HEXES = {
          white: {
            %w[Y1
               Y3
               Z0] => '',
            %w[X6
               Y5] => 'upgrade=cost:100,terrain:mountain',
            %w[X4
               Z2
               Z6
               AA-1] => 'town=revenue:0',
            %w[Y7
               AA1] => 'city=revenue:0',
          },
          yellow: {
            ['Z4'] => 'city=revenue:0;city=revenue:0;label=OO',
          },
          sepia: {
            ['W9'] => 'city=revenue:10,loc:4.5;path=a:0,b:3;path=a:_0,b:3;path=a:_0,b:4;path=a:_0,b:5',
          },
        }.deep_freeze

        R3_HEXES = {
          white: {
            ['Q25'] => '',
          },
          sepia: {
            ['Q23'] => 'city=revenue:10;path=a:0,b:_0;path=a:4,b:_0;path=a:5,b:_0',
          },
        }.deep_freeze

        DB2_HEXES = {
          white: {
            ['W23'] => 'city=revenue:0',
          },
        }.deep_freeze

        DB3_HEXES = {
          white: {
            ['I9'] => '',
            ['J6'] => 'town=revenue:0',
            ['G13'] => 'city=revenue:0',
            ['H10'] => 'town=revenue:0;upgrade=cost:100,terrain:mountain',
            ['F4'] => 'town=revenue:0;border=edge:0,type:impassable;upgrade=cost:100,terrain:mountain',
          },
          sepia: {
            ['F2'] => 'town=revenue:10,loc:4;path=a:4,b:_0;path=a:3,b:_0;town=revenue:10,loc:5;path=a:5,b:_1',
          },
        }.deep_freeze

        UNIT1_OFFMAP_HEXES = {
        }.deep_freeze

        UNIT2_OFFMAP_HEXES = {
        }.deep_freeze

        UNIT3_OFFMAP_HEXES = {
          gray: {
            %w[B6
               C1
               B10
               C3
               C5
               L8
               L10
               L12
               L14
               L16] => '',
          },
        }.deep_freeze

        R1_OFFMAP_HEXES = {
          gray: {
            %w[P8
               Q9] => '',
          },
        }.deep_freeze
        # rubocop:enable Layout/LineLength

        def append_game_hexes(ghexes, new_hexes)
          existing_coords = []
          ghexes.each { |_color, hex_hash| existing_coords.concat(hex_hash.keys) }
          existing_coords.flatten!

          new_hexes.each do |color, hex_hash|
            hex_hash.each do |raw_coords, value|
              # copy to avoid mutating `new_hexes`
              coords = raw_coords.dup

              # skip over a coordinate that has already been defined, regardless of color
              raw_coords.each do |new_coord|
                coords.delete(new_coord) if existing_coords.include?(new_coord)
              end
              next if coords.empty?

              if ghexes[color]
                hexes_coords, = ghexes[color].find { |_, v| v == value }

                if hexes_coords
                  next unless (hexes_coords & coords).empty?

                  # this defintion is already used for this color => add the new coordinates to it
                  ghexes[color].delete(hexes_coords)
                  new_coords = hexes_coords + coords
                  ghexes[color][new_coords] = value
                else
                  # new definition for this color
                  ghexes[color][coords] = value
                end
              else
                # new color
                ghexes[color] = {}
                ghexes[color][coords] = value
              end
            end
          end
        end

        def game_hexes
          ghexes = {}
          append_game_hexes(ghexes, DB2_HEXES) if @optional_rules.include?(:db2)
          append_game_hexes(ghexes, DB3_HEXES) if @optional_rules.include?(:db3)
          append_game_hexes(ghexes, UNIT4_HEXES) if @optional_rules.include?(:unit_4)
          append_game_hexes(ghexes, R1_HEXES) if @regionals[1]
          append_game_hexes(ghexes, R2_HEXES) if @regionals[2]
          append_game_hexes(ghexes, R3_HEXES) if @regionals[3]
          append_game_hexes(ghexes, UNIT1_HEXES) if @units[1]
          append_game_hexes(ghexes, UNIT2_HEXES) if @units[2]
          append_game_hexes(ghexes, UNIT3_HEXES) if @units[3]

          # append_game_hexes will ignore offboard hexes if they are already defined
          append_game_hexes(ghexes, R1_OFFMAP_HEXES) if @regionals[1]
          append_game_hexes(ghexes, UNIT1_OFFMAP_HEXES) if @units[1]
          append_game_hexes(ghexes, UNIT2_OFFMAP_HEXES) if @units[2]
          append_game_hexes(ghexes, UNIT3_OFFMAP_HEXES) if @units[3]
          ghexes
        end
      end
    end
  end
end
