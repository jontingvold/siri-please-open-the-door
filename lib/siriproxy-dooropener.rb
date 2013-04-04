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
    
    # Answers to questions like "Can you please open the door", "Siri, open the door, please"
  end
  
  def generate_response()
    messages = [
        "As you wish sir",
        "Your welcome",
        "Welcome to Geir"]
        
    return messages.sample
  end
  
  def open_the_door(text_message, voice_message)
    say text_message, spoken: voice_message
    
    # sleep 1.0    # Wait one secund before opening the door
    contents  = open('http://door.kulia.no') {}
    puts "Door opened!"
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

  listen_for /open the door/i do
    open_the_door("Door opened.", generate_message)
  end
  
  listen_for /open door/i do
    open_the_door("Door opened.", generate_message)
  end
end
