class Geoserver::Wms
  attr_reader :connection
  
  # "connection" is an instance of
  #   Geoserver::Adapter::HTTP
  #   Geoserver::Adapter::Direct (JRuby only)
  # or any other class that uses "connection" interface
  def initialize(connection)
    @connection = connection
  end
end