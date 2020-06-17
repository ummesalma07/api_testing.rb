require 'rest-client'

body = RestClient.get("www.rubyguides.com")

body = RestClient.post("www.rubyguides.com/",
{email:"zarakhan@gmail.com",message: "hello world"}
)
p body





