class CSVReader
  attr_accessor :fname, :headers

  def initialize(filename)
    @fname = filename
  end

  def headers=(header_str)
    @headers = header_str.split(',')
    @headers.map! do |h|
      h.gsub!('"', '') # remove quotes
      h.strip! # remove new line
      h.underscore.to_sym # convert to a symbol
    end
  end

  def create_hash(an_array)
    h = {}
    @headers.each_with_index do |header, i|
      #remove new lines from the value
      value = value[i].strip.gsub('"', '')
      h[header] = value unless value.emtpy?
    end
    h
  end
end

class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end