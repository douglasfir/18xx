# frozen_string_literal: true

module Engine
  module Game
    module G1866
      module Entities
        COMPANIES = [
          {
            name: 'Great Britain',
            sym: 'C1',
            value: 0,
            revenue: 10,
            desc: 'Concession for Great Britain National Corporation. Closes when concession exercised to purchase '\
                  'corporation.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['GB'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#fde2c5',
            text_color: 'black',
          },
          {
            name: 'France',
            sym: 'C2',
            value: 0,
            revenue: 10,
            desc: 'Concession for France National Corporation. Closes when concession exercised to purchase '\
                  'corporation.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['FR'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#fffbcc',
            text_color: 'black',
          },
          {
            name: 'Austro-Hungarian Empire',
            sym: 'C3',
            value: 0,
            revenue: 10,
            desc: 'Concession for Austro-Hungarian Empire National Corporation. Closes when concession exercised to '\
                  'purchase corporation.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['AHE'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#e2ceb6',
            text_color: 'black',
          },
          {
            name: 'Benelux',
            sym: 'C4',
            value: 0,
            revenue: 10,
            desc: 'Concession for Benelux National Corporation. Closes when concession exercised to purchase '\
                  'corporation.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['BNL'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#7eff80',
            text_color: 'black',
          },
          {
            name: 'Spain',
            sym: 'C5',
            value: 0,
            revenue: 10,
            desc: 'Concession for Spain National Corporation. Closes when concession exercised to purchase '\
                  'corporation.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['ESP'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#bea481',
            text_color: 'black',
          },
          {
            name: 'Switzerland',
            sym: 'C6',
            value: 0,
            revenue: 10,
            desc: 'Concession for Switzerland National Corporation. Closes when concession exercised to purchase '\
                  'corporation.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['CH'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#d6cf81',
            text_color: 'black',
          },
          {
            name: 'Prussia Minor National',
            sym: 'M1',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Prussia minor national company.',
            abilities: [],
            color: '#d9cde4',
            text_color: 'black',
          },
          {
            name: 'Hannover Minor National',
            sym: 'M2',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Hannover minor national company.',
            abilities: [],
            color: '#a386be',
            text_color: 'black',
          },
          {
            name: 'Bavaria Minor National',
            sym: 'M3',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Bavaria minor national company.',
            abilities: [],
            color: '#b8a2cd',
            text_color: 'black',
          },
          {
            name: 'Württemberg Minor National',
            sym: 'M4',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Württemberg minor national company.',
            abilities: [],
            color: '#8e6aae',
            text_color: 'black',
          },
          {
            name: 'Saxony Minor National',
            sym: 'M5',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Saxony minor national company.',
            abilities: [],
            color: '#78539a',
            text_color: 'black',
          },
          {
            name: 'Kgdm 2 Sicilies Minor National',
            sym: 'M6',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Kgdm 2 Sicilies minor national company.',
            abilities: [],
            color: '#ffd8fe',
            text_color: 'black',
          },
          {
            name: 'Sardinia Minor National',
            sym: 'M7',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Sardinia minor national company.',
            abilities: [],
            color: '#ff62fa',
            text_color: 'black',
          },
          {
            name: 'Lombardy-Venetia Minor National',
            sym: 'M8',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Lombardy-Venetia minor national company.',
            abilities: [],
            color: '#ff7ffe',
            text_color: 'black',
          },
          {
            name: 'Papal States Minor National',
            sym: 'M9',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Papal States minor national company.',
            abilities: [],
            color: '#ff33f9',
            text_color: 'black',
          },
          {
            name: 'Tuscany Minor National',
            sym: 'M10',
            value: 0,
            revenue: 0,
            desc: 'A 50% director’s certificate in the Tuscany minor national company.',
            abilities: [],
            color: '#ffa8fc',
            text_color: 'black',
          },
          {
            name: 'Stock turn token',
            sym: 'ST1',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
          {
            name: 'Stock turn token',
            sym: 'ST2',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
          {
            name: 'Stock turn token',
            sym: 'ST3',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
          {
            name: 'Stock turn token',
            sym: 'ST4',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
          {
            name: 'Stock turn token',
            sym: 'ST5',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
          {
            name: 'Stock turn token',
            sym: 'ST6',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
          {
            name: 'Stock turn token',
            sym: 'ST7',
            value: 0,
            revenue: 0,
            desc: 'Buy a stock turn token. T = Top row, M = Middle row and B = Bottom row.',
            abilities: [],
            color: nil,
          },
        ].freeze

        CORPORATIONS = [
          {
            sym: 'GB',
            name: 'Great Britain National',
            logo: '1866/GB',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[F6 F6 F6 F6 A3 D6 G3 E1 E3 G1 D2 F2 D4],
            city: [0, 1, 2, 3],
            color: '#fde2c5',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'FR',
            name: 'France National',
            logo: '1866/FR',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[J6 J6 J6 J6 J6 J6 H8 I9 J10 K9 M9 O5 I1 I5 K1 K3 K13 N2 O7 P12 P10],
            city: [0, 1, 2, 3, 4, 5],
            color: '#fffbcc',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'AHE',
            name: 'Austro-Hungary National',
            logo: '1866/AHE',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[K25 L18 L26 N22 N26 O23 O21 P26 J22 L24 M23 Q25],
            color: '#e2ceb6',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'DE',
            name: 'Germany National',
            logo: '1866/DE',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[H14 H26 F22 E25 E19 F18 E17 K19 I15 K15 I23 H20],
            color: '#d0c1de',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'IT',
            name: 'Italy National',
            logo: '1866/IT',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[S23 T20 V18 V20 N12 O13 T12 N14 P18 N18 R18 Q19 Q17],
            color: '#ff7ffe',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'BNL',
            name: 'Benelux National',
            logo: '1866/BNL',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[F10 F12 G9 G11 H10 I11],
            color: '#7eff80',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'ESP',
            name: 'Spain National',
            logo: '1866/ESP',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[O1 T2 R0 R4 U1],
            color: '#bea481',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'CH',
            name: 'Switzerland National',
            logo: '1866/CH',
            tokens: [],
            type: 'national',
            float_percent: 10,
            shares: [10, 10, 10, 10, 10, 50],
            always_market_price: true,
            coordinates: %w[L14 L16 L12],
            color: '#d6cf81',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'PRU',
            name: 'Prussia Minor National',
            logo: '1866/PRU',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[H14 H26 F22 E25],
            color: '#d9cde4',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'HAN',
            name: 'Hannover Minor National',
            logo: '1866/HAN',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[E19 F18 E17],
            color: '#a386be',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'BAV',
            name: 'Bavaria Minor National',
            logo: '1866/BAV',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: 'K19',
            color: '#b8a2cd',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'WTB',
            name: 'Württemberg Minor National',
            logo: '1866/WTB',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[I15 K15],
            color: '#8e6aae',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'SAX',
            name: 'Saxony Minor National',
            logo: '1866/SAX',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[I23 H20],
            color: '#78539a',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'K2S',
            name: 'Kgdm 2 Sicilies Minor National',
            logo: '1866/K2S',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[S23 T20 V18 V20],
            color: '#ffd8fe',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'SAR',
            name: 'Sardinia Minor National',
            logo: '1866/SAR',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[N12 O13 T12],
            color: '#ff62fa',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'LV',
            name: 'Lombardy-Venetia Minor National',
            logo: '1866/LV',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[N14 P18 N18],
            color: '#ff7ffe',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'PAP',
            name: 'Papal States Minor National',
            logo: '1866/PAP',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: %w[R18 Q19],
            color: '#ff33f9',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'TUS',
            name: 'Tuscany Minor National',
            logo: '1866/TUS',
            tokens: [],
            type: 'minor_national',
            float_percent: 50,
            hide_shares: true,
            shares: [50, 50],
            always_market_price: true,
            coordinates: 'Q17',
            color: '#ffa8fc',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'LNWR',
            name: 'London and North Western Railway',
            logo: '1866/LNWR',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'D4',
            color: '#0072bc',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'GWR',
            name: 'Great Western Railway',
            logo: '1866/GWR',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'F2',
            color: '#007236',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'NBR',
            name: 'North British Railway',
            logo: '1866/NBR',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'A3',
            color: '#7d4900',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'PLM',
            name: 'Chemins de fer de Paris à Lyon et à la Méditerranée',
            logo: '1866/PLM',
            tokens: [0, 0, 20, 40, 60, 80],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: %w[M9 P10],
            color: '#630460',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'MIDI',
            name: 'Chemin de Fer du Midi',
            logo: '1866/MIDI',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'N2',
            color: '#acd473',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'OU',
            name: 'Compagnie des chemins de fer del`Ouest',
            logo: '1866/OU',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'I5',
            color: '#fbaf5d',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'CPS',
            name: 'Compagnie du chemin de fer de Paris à Strasbourg',
            logo: '1866/CPS',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'K13',
            color: '#323996',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'KPS',
            name: 'Königlich Preußische Staatseisenbahnen',
            logo: '1866/KPS',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'E25',
            color: '#000000',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'BY',
            name: 'Bayerische Staatsbahn',
            logo: '1866/BY',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'K19',
            color: '#6dd0f7',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'KHS',
            name: 'Königlich Hannöversche Staatseisenbahnen',
            logo: '1866/KHS',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'F18',
            color: '#fff200',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'SB',
            name: 'Sudbahn',
            logo: '1866/SB',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'N22',
            color: '#f26522',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'BH',
            name: 'Bosnia-Herzegowinische Landesbahn',
            logo: '1866/BH',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'Q25',
            color: '#ff0000',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'FNR',
            name: 'Emperor Ferdinand Northern Railway',
            logo: '1866/FNR',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'K25',
            color: '#a3d49c',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'SSFL',
            name: 'Societa per la Strada Ferrata Leopolda',
            logo: '1866/SSFL',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'Q17',
            color: '#48e293',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'IFT',
            name: 'Impresa Ferroviaria Trinacria',
            logo: '1866/IFT',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'V20',
            color: '#ff7ffe',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'SFAI',
            name: 'Società per le strade ferrate dell`Alta Italia',
            logo: '1866/SFAI',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'N14',
            color: '#a4610a',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'SBB',
            name: 'Chemins de fer fédéraux suisses',
            logo: '1866/SBB',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'L16',
            color: '#9e0b0f',
            text_color: 'white',
            reservation_color: nil,
          },
          {
            sym: 'GL',
            name: 'Chemins de Fer Guillaume Luxembourg',
            logo: '1866/GL',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'I11',
            color: '#ffcd03',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'NRS',
            name: 'Nederlandsche Rhijnspoorweg-Maatschappij',
            logo: '1866/NRS',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'F12',
            color: '#d54427',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'ZPB',
            name: 'Zaragoza, Pamplona & Barcelona Railway',
            logo: '1866/ZPB',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'R4',
            color: '#ffc592',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'MZA',
            name: 'Madrid, Zaragoza & Alicante Railway',
            logo: '1866/MZA',
            tokens: [0, 20, 40, 60, 80, 100],
            type: 'share_5',
            float_percent: 40,
            shares: [40, 20, 20, 20],
            always_market_price: true,
            coordinates: 'U1',
            color: '#fef2c9',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'L',
            name: 'London reservation',
            tokens: [],
            coordinates: 'F6',
            city: 1,
            reservation_color: '#cb7745',
          },
          {
            sym: 'P',
            name: 'Paris reservation',
            tokens: [],
            coordinates: %w[J6 J6 J6],
            city: [0, 2, 5],
            reservation_color: '#cb7745',
          },
        ].freeze
      end
    end
  end
end
