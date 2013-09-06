require 'setup'

describe Setup do
  describe 'initialize' do
    it 'should set areas' do
      setup = Setup.new
      setup.areas.should_not be_empty
    end
  end
  describe 'areas' do
    it 'should be able to get and set areas' do 
      setup = Setup.new
      setup.respond_to?(:areas).should eq(true)
      setup.respond_to?(:areas=).should eq(true)
    end
  end
end
