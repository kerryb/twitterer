require 'rubygems'
require 'spec'
require 'osx/cocoa'

$ib_outlets = {}

def ib_outlets_for cls
  $ib_outlets[cls]
end

module OSX
  class << NSObject
    def ib_outlets *args
      $ib_outlets[self] ||= []
      args.each do |arg|
        $ib_outlets[self] << arg
      end
    end
  end
end

Dir.glob(File.dirname(__FILE__) + '/../lib/**/*.rb').each do |f|
  require f
end
