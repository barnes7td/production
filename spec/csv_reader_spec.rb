require 'csv_reader'

describe CSVReader do
  describe 'initialize' do
    it 'should set the file name' do
      csv = CSVReader.new("csv_file.csv")
      csv.fname = "csv_file.csv"
      csv.fname.should eq("csv_file.csv")
    end
  end  
  describe 'headers=' do
    it 'removes quotes, new line and converts to a symbol' do
      csv = CSVReader.new("csv_file.csv")
      csv.headers=(%q("RecordNumber","Zipcode","ZipCodeType")  + "\n")
      csv.headers.should eq([:record_number, :zipcode, :zip_code_type])
    end
  end
  describe 'create_hash' do
    it 'creates a hash' #do
      # MRG: Not sure what the expected input is yet
      #csv = CSVReader.new("csv_file.csv")
      #csv.headers=(%q("RecordNumber","Zipcode","ZipCodeType")  + "\n")
      #a_hash = csv.create_hash([1,"00704","STANDARD"])
      #a_hash.should eq({})
    #end
  end
end
