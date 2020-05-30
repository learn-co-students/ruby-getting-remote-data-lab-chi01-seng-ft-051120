require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_reader :url

  def initialize(url)
    @url = url
  end

  # sends a GET request to the URL 
  # passed in on initialization. This method 
  # should return the _body_ of the response.
  def get_response_body
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  # Should use get_response_body method
  # to send a request, then return
  # a Ruby Array or Hash made up of data
  # converted from the response of the request
  def parse_json
    json_data = JSON.parse(self.get_response_body)
  end

end