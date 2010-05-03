require 'rubygems'
$:.unshift File.dirname(__FILE__) unless $:.include?(File.dirname(__FILE__))

module Geoserver
  
  def self.version
    @version ||= File.read(File.join(File.dirname(__FILE__), '..', 'VERSION'))
  end
  
  VERSION = self.version
  
  autoload :WMS, 'ruby-geoserver/wms'
  autoload :Connection, 'ruby-geoserver/connection'
  
  module Connectable
    
    def connect opts={}
      Client.new Connection::NetHttp.new(opts)
    end
    
  end
  
  extend Connectable
  
end