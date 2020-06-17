require 'savon'
class API_Testing
  def api
    self
    @client=Savon::Client.new do
      wsdl= 'http://api.geosvc.com/PlaceLookup.asmx?wsdl'
      # @wsdl.document = "/SOAPUI Projects/zipcode_project.xml"
      endpoint='http://api.geosvc.com/geosvc_api/PlaceLookup.asmx'
    end
    end

    def send_request(request , operation)
     @response = @client.call :operation,:get_all_states.to_s
      puts @response
    end
end

g = API_Testing.new
    g.send_request(:geo_places_shop ,:geo_places_soap12)