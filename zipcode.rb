require 'savon'

class Zip_code
  attr_accessor :state,:city,:zipcode

  def check_data(zip)
    client = Savon.client(wsdl:"http://ws.cdyne.com/psaddress/addresslookup.asmx?wsdl")
    response = client.request :ws,:advanced_check_address,options:{zip_code: zip}

    data = response.to_hash[:advanced_check_address]
    @city = data[:city]
    @state = data[:state]
    @zipcode = data[:zipcode]
  end
end

Zip_code.new.check_data(43016)

