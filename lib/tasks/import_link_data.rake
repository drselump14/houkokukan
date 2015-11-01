require 'csv'
namespace :import_link_data do
  desc 'import link data from csv'
  task run: :environment do
    ParseCsv.new('link.csv').parse.each do |row|
      Link.create(link_id: row[0],
                 start_node_id: row[1],
                 finish_node_id: row[2],
                 link_type: row[3],
                 width: row[11],
                 level_difference: row[22],
                 level_latitude: Coordinate.to_decimal(row[23] || ''),
                 level_longitude: Coordinate.to_decimal(row[24] || ''),
                 dot_block: row[33],
                 length: row[48]
                 )
    end
  end
end
