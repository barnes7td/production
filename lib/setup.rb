require_relative 'csv_reader'
require_relative 'area'

# MRG: Need to externalize the passing in of the csv data
# as it takes too long to load for testing purposes.

class Setup
  attr_accessor :areas

  def initialize
    csv = CSVReader.new("./free-zipcode-database.csv")
  
    @areas = []
    csv.read do |item|
      @areas << Area.new(item)
    end 
    self           
  end
end

