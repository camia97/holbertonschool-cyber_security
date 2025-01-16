#!/usr/bin/env ruby
require 'net/http'
require 'json'

def get_request(url)
  
  uri = URI(url)

  response = Net::HTTP.get_response(uri)

  status = "#{response.code} #{response.message}"

  body = JSON.pretty_generate(JSON.parse(response.body))

  puts "Response status: #{status}"
  puts "Response body:"
  puts body
end