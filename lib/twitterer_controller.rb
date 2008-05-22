#
#  twitterer_controller.rb
#  Twitterer
#
#  Created by Kerry Buckley on 21/05/2008.
#  Copyright (c) 2008 __MyCompanyName__. All rights reserved.
#

require 'osx/cocoa'

class TwittererController < OSX::NSObject
  ib_outlets :tweet_table, :new_tweet
  ib_action :tweet
  
  def tweet text
  end
end
