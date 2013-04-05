siriproxy-dooropener
====================

A plugin to Siriproxy that can open the door.

### Installation

Build and install the bundle

	gem build siriproxy-dooropener.gemspec
	
	gem install siriproxy-dooropener-0.0.1.gem
	

Add sirirproxy-dooropener to Siriproxys config file (Eg. ~/.siriproxy/config.yml)
The name of the directory must be `siriproxy-dooropener`. The path should be the path to the parent directory of `siriproxy-dooropener`. `siriproxy-dooropener` should not be included in the path!
	
	plugins:
	- name: 'dooropener'
      path: '/path/to/plugins/'

Reload SiriProxy
	
	siriproxy bundle

Run SiriProxy

	siriproxy server