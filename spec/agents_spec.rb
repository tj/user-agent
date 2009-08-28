
require File.dirname(__FILE__) + '/spec_helper'

describe Agent do
  describe "Safari" do
    [
      ['4.0dp1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/526.9 (KHTML, like Gecko) Version/4.0dp1 Safari/526.8'],
      ['4.0.3',  'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-us) AppleWebKit/531.9 (KHTML, like Gecko) Version/4.0.3 Safari/531.9'],
      ['4.0.2',  'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532+ (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1'],
      ['4.0.1',  'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/4.0.1 Safari/530.18'],
      ['4.0',    'Mozilla/5.0 (Windows; U; Windows NT 6.0; ru-RU) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16'],
      ['3.2.3',  'Mozilla/5.0 (Windows; U; Windows NT 5.1; cs-CZ) AppleWebKit/525.28.3 (KHTML, like Gecko) Version/3.2.3 Safari/525.29'],
    ].each do |version, string|
      it "should parse version #{version}" do
        Agent.new(string).name.should == :Safari
        Agent.new(string).version.should == version
      end
    end
  end
  
  describe "IE" do
    [
      ['8.0',  'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)'],
      ['7.0b', 'Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.04506.30)'],
      ['7.0',  'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; c .NET CLR 3.0.04506; .NET CLR 3.5.30707; InfoPath.1; el-GR)'],
      ['6.1',  'Mozilla/4.0 (compatible; MSIE 6.1; Windows XP; .NET CLR 1.1.4322; .NET CLR 2.0.50727)'],
      ['6.0b', 'Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.1)'],
      ['6.0',  'Mozilla/5.0 (Windows; U; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)'],
    ].each do |version, string|
      unless version.empty?
        it "should parse version #{version}" do
          Agent.new(string).name.should == :IE
          Agent.new(string).version.should == version
        end
      end
    end
  end
  
  describe "Opera" do
    [
      ['9.99', 'Opera/9.99 (Windows NT 5.1; U; pl) Presto/9.9.9'],  
      ['9.70', 'Mozilla/5.0 (Linux i686 ; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.70'],  
      ['9.64', 'Opera/9.64 (X11; Linux i686; U; Linux Mint; it) Presto/2.1.1'],  
      ['9.51', 'Mozilla/5.0 (X11; Linux i686; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51'],  
      ['9.00', 'Opera/9.00 (Nintindo Wii; U; ; 103858; Wii Shop Channel/1.0; en)'],  
    ].each do |version, string|
      unless version.empty?
        it "should parse version #{version}" do
          Agent.new(string).name.should == :Opera
          Agent.new(string).version.should == version
        end
      end
    end
  end
  
end