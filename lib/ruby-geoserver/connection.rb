require 'uri'

module Geoserver::Connection
  autoload :NetHttp,  'ruby-geoserver/connection/net_http'
  autoload :Utils,    'ruby-geoserver/connection/utils'
  autoload :Httpable, 'ruby-geoserver/connection/httpable'
end