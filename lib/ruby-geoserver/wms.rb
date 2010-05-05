module Geoserver
  class Wms
    attr_accessor :url
    attr_accessor :bbox
    attr_accessor :layers
    
  
    ##############################
    # Constructors
    ##############################
    #
    # Geoserver::wms.new:
    # create an empty wms instance by appending "wms" to the connection string
    #
    def initialize(options={})
      @url = @connection + "/wms"
    end
    
    ##############################
    # Convenience Classes
    ##############################
    # return the feature infor for a given layer
    def feature_info(layers, bbox, styles, query_layers, x, y, width="550", height="250",format='jpeg', info_format='text/plain')
      url = "#{$GEOSERVER_URL}?bbox=#{bbox}&styles=#{styles}&format=#{format}&info_format=#{info_format}&request=GetFeatureInfo&layers=#{layers}&query_layers=#{query_layers}&width=#{width}&height=#{height}&x=#{x}&y=#{y}"
      return Nokogiri::XML(open(url))
    
    end
  end
end