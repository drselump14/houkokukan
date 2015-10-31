require 'csv'
namespace :import_place_data do
  desc 'import place data from csv'
  task run: :environment do
    ParseCsv.new('place.csv').parse.each do |row|
      Place.create(entrance_id: row[0],
                 node_id: row[1],
                 place_id: row[2],
                 name: row[3],
                 entrance_type: row[5],
                 level_difference: row[6]
                 )
    end
  end
end
