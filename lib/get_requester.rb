require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
 
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
 
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  

end
 
parse_jason = GetRequester.new.get_response_body
puts parse_jason


