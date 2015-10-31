require 'csv'
namespace :import_node_data do
  desc 'import link data from csv'
  task run: :environment do
    ParseCsv.new('node.csv').parse.each do |row|
      Node.create(node_id: row[0],
                 latitude: row[2],
                 longitude: row[3],
                 height: row[4])
    end
  end
end
