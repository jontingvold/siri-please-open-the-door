require 'cora'
require 'siri_objects'
require 'pp'
require 'open-uri'

#######
# This is a "hello world" style plugin. It simply intercepts the phrase "test siri proxy" and responds
# with a message about the proxy being up and running (along with a couple other core features). This
# is good base code for other plugins.
#
# Remember to add other plugins to the "config.yml" file if you create them!
######

class SiriProxy::Plugin::Example < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

  listen_for /open the door/i do
    say "Door opened." #say something to the user!
    
    # sleep 1.0    # Wait one secund before opening the door
    contents  = open('http://door.kulia.no') {}
    puts "Door opened!"
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end
  
  listen_for /open door/i do
    say "Door opened."
    
    contents  = open('http://door.kulia.no') {}
    puts "Door opened!"
    
    request_completed
  end
end
