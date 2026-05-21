require 'net/http'
require 'uri'
require 'json'

def post_request(url, body_params = {})
  # 1. Parse the string URL into a URI object
  uri = URI.parse(url)

  # 2. Set up the HTTP POST request object
  request = Net::HTTP::Post.new(uri)
  
  # 3. Set content type header and assign the JSON payload string
  request.content_type = 'application/json'
  request.body = JSON.generate(body_params)

  # 4. Execute the network request using a secure SSL/TLS connection block if needed
  response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
    http.request(request)
  end

  # 5. Print out the response details matching the expected format
  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"
  
  parsed_body = JSON.parse(response.body)
  puts JSON.pretty_generate(parsed_body)
end
