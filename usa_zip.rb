require 'savon'


    #create a savon client from remote location
    client = Savon.client(wsdl: 'http://ws.cdyne.com/psaddress/addresslookup.asmx?wsdl')

    #create a savon client from local location
    # client = Savon.client(wsdl: '/Users/Documents/ .. addresslookup.wsdl')

    #create a savon client when you dont have a wsdl document
    # client = Savon.client(endpoint: 'http://addresslookup.com',namespace: 'http://addresslookup.com')

    #to print all the actions provided by the client
   puts client.operations

    # standardized_address
    # advanced_standardization
    # return_city_state
    # barcode_font_url
    # cc_server_check
    # check_address
    # check_address_w2lines
    # advanced_check_address
    # version_information
    # calculate_distance_in_miles
    # alternate_cities
    # city_state_to_zip_code_matcher
    # get_congressional_district_by_zip

puts "The response for the given request is al follows--"
    response = client.call(:alternate_cities,message:{"zipcode"=>43016,"LicenseKey"=> " "})


# response = client.call(:alternate_cities)do
#   message zipcode:"43016",licensekey:""
#   convert_request_keys_to :camelcase
# end
#
# puts response.to_hash
# Savon.client(raise_erors: false)

 puts response.to_hash


