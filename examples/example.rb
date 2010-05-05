require 'rubygems'
require 'ruby-geoserver'

geoserver_url = 'http://localhost:8080/geoserver'

geoserver = Geoserver.connect(geoserver_url)

puts geoserver