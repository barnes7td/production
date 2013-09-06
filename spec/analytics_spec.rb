require 'analytics'

describe Analytics do
  describe 'options' do
    it 'should be able to get and set options' do 
      analytics = Analytics.new([])
      analytics.respond_to?(:options).should eq(true)
      analytics.respond_to?(:options=).should eq(true)
    end
  end
  describe 'initialize' do
    it 'should init areas'
  end
  describe 'set_options' do
    it 'should set options properly' do      
      analytics = Analytics.new([])
      analytics.options[0][:menu_id].should eq(1)
      analytics.options[0][:menu_title].should eq('Areas count')
      # MRG: Not sure how best to test this
      #analytics.options[0][:method].respond_to?(:how_many).should eq(true)

      # MRG: fill in the remaining options
    end
  end
  describe 'run' do
    # MRG: Not sure how to test this
    it 'should take a number as an argument'
    it 'should pick the option and run the appropriate method'
    it 'should allow the user to exit the program'
    it 'should throw an approrpiate error when user picks invalid option'
  end
  describe 'how_many' do
    it 'should return how many areas ther are' do
        analytics = Analytics.new([])

    end
  end
  describe 'smallest_pop' do
    it 'should print the smallest city and state'
  end
  describe 'largest_pop' do
    it 'should print the largest city and population'
  end
  describe 'zip_info' do
    it 'should display zipcode info'
  end
end