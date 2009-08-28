
require File.dirname(__FILE__) + '/spec_helper'

describe Agent do
  before :each do
    @agent = Agent.new 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2'
  end
  
  describe "#initialize" do
    it "should allow a user agent string to be passed" do
      Agent.new('foo').string.should == 'foo'
    end
  end
  
  describe "#os" do
    it "should return operating system symbol" do
      @agent.os.should == :'OS X 10.5'
    end
  end
  
  describe "#engine" do
    it "should return engine symbol" do
      @agent.engine.should == :webkit
    end
  end
  
  describe "#version" do
    it "should return engine version" do
      @agent.version.should == '528.4'
    end
  end
end