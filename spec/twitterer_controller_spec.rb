require File.dirname(__FILE__) + '/spec_helper'

describe TwittererController  do
  it 'should be an OSX::NSObject' do
    TwittererController.new.should be_a_kind_of(OSX::NSObject)
  end
  
  it 'should have an outlet for tweet_table' do
    ib_outlets_for(TwittererController).should include(:tweet_table)
  end
end
