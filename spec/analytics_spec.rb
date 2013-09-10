require 'analytics'

describe Analytics do
  let(:area_1) { double("area") }
  let(:area_2) { double("area") }

  let(:analytics) do
    analytics = Analytics.new([area_1, area_2])
  end

  describe 'options' do
    it 'should be able to get and set options' do
      # TDB: More flexible method. Can change with new options without adjusting.

      seletion = rand(analytics.options.length-1)
      expect(analytics.options[2].has_key?(:menu_id)).to be_true
      expect(analytics.options[2].has_key?(:menu_title)).to be_true
      expect(analytics.options[2].has_key?(:method)).to be_true
    end
  end

  # describe 'initialize' do
  #   TDB: areas and options tested in other areas.
  # end

  # describe 'set_options' do
    #TDB: This is a GUI function. This is more of integration test territory IMO.
    #     I would test options but not this method. It is really a private method
    #     (shouldn't be called from outside the class) and therefor I won't test
    #     See Sandi Metz for reasoning.
  # end

  # describe 'run' do
    # MRG: Not sure how to test this
    # TDB: Really an integration test (not a unit test)
  #   it 'should take a number as an argument'
  #   it 'should pick the option and run the appropriate method'
  #   it 'should allow the user to exit the program'
  #   it 'should throw an approrpiate error when user picks invalid option'
  # end

  describe 'how_many' do
    it 'returns how many areas there are' do
      expect(analytics.how_many).to eq("There are 2 areas")
    end
  end

  describe 'smallest_pop' do
    #TDB: This many stubs is a probably a sign that the analytics class
    #     knows too much about area

    it 'returns the smallest city and state' do
      area_1.stub(:estimated_population).and_return(10)
      area_1.stub(:city).and_return("Podunk")
      area_1.stub(:state).and_return("IN")
      area_2.stub(:estimated_population).and_return(20)
      expect(analytics.smallest_pop).to eq("Podunk, IN has the smallest population of 10")
    end
  end

  describe 'largest_pop' do
    it 'should print the largest city and population' do
      area_1.stub(:estimated_population).and_return(10)
      area_2.stub(:estimated_population).and_return(20)
      area_2.stub(:city).and_return("Podunk")
      area_2.stub(:state).and_return("IN")
      expect(analytics.largest_pop).to eq("Podunk, IN has the largest population of 20")
    end
  end

  # describe 'zip_info' do
  #   it 'should display zipcode info'
  # end
end
