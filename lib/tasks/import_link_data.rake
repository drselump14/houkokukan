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
                 level_latitude: row[23],
                 level_longitude: row[24],
                 dot_block: row[33],
                 )
    end
  end
end
