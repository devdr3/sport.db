# encoding: utf-8


teams = [
  [ 'barcelona', 'FC Barcelona',                    'city:barcelona' ],
  [ 'madrid',    'Real Madrid',                     'city:madrid' ],
  [ 'atletico',  'Atlético Madrid',                 'city:madrid' ],
  [ 'malaga',    'FC Málaga|Malaga CF|CF Malaga',   'city:malaga' ],
  [ 'valencia',  'FC Valencia|CF Valencia',         'city:valencia' ],
  [ 'athletic',  'Athletic Bilbao',                 'city:bilbao' ]
]

es = Country.find_by_key!( 'es' )

Team.create_from_ary!( teams, club: true, country: es )

Prop.create!( key: 'db.es.teams.version', value: '1' )