require 'csv'

class ParseCsv
  attr_reader :file, :csv
  def initialize(file)
    @file = file
  end

  def parse
    csv = CSV.parse(File.read('resources/' + file))
    csv.shift
    csv
  end
end
