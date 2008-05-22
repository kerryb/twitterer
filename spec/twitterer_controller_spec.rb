require File.dirname(__FILE__) + '/spec_helper'

describe TwittererController  do
  it 'should be an OSX::NSObject' do
    TwittererController.new.should be_a_kind_of(OSX::NSObject)
  end
  
  it do
    ib_outlets_for(TwittererController).should include(:tweet_table)
  end
  
  it do
    ib_outlets_for(TwittererController).should include(:new_tweet)
  end
  
  it "should have an action for 'tweet'" do
    ib_actions_for(TwittererController).should include(:tweet)
  end
end
