require 'area'

# MRG: There's too much data duplication here.

describe Area do
  describe 'initialize' do
    it 'should set defaults' do
      area = Area.new({})
      area.zipcode.should eq(0)
      area.estimated_population.should eq(0)
      area.city.should eq("n/a")
      area.state.should eq("n/a")
    end
    it 'should set values' do
      area = Area.new({ zipcode: 60601, 
        estimated_population: 2707000,
        city: "Chicago",
        state: "IL"})
      area.zipcode.should eq(60601)
      area.estimated_population.should eq(2707000)
      area.city.should eq("Chicago")
      area.state.should eq("IL")
    end
  end  
  describe 'to_s' do
    it 'should return a valid string' do
      area = Area.new({ zipcode: 60601,
        estimated_population: 2707000,
        city: "Chicago",
        state: "IL"})
      area.to_s.should eq("Chicago, IL 60601 has 2707000 people.")
    end
  end
end
