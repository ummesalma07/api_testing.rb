require 'savon'

client = Savon.client(wsdl:'http://ws.cdyne.com/psaddress/addresslookup.asmx?wsdl')
puts client.operations
puts "The response for the given operation request is as follows--"
response = client.call(:alternate_cities,message:{"zipcode"=>43026,"LicenseKey"=>" "})
puts response.to_hash

