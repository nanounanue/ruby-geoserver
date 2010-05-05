require 'rubygems'
$:.unshift File.dirname(__FILE__) unless $:.include?(File.dirname(__FILE__))

module Geoserver
  
  def self.version
    @version ||= File.read(File.join(File.dirname(__FILE__), '..', 'VERSION'))
  end
  
  VERSION = self.version
  
  def self.connect(connection)
     @connection = connection
   end
     
     CONNECTION = @connection
  
  autoload :WMS, 'ruby-geoserver/wms'
  
  
  
end