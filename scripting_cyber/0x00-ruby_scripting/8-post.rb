#!/usr/bin/env ruby

require 'net/http'
require 'json'

def post_request(url, body_params={})
    uri = URI(url)

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == 'https'

    request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
    request.body = body_params.to_json

    response = http.request(request)

    status = "#{response.code} #{response.message}"
    body = JSON.pretty_generate(JSON.parse(response.body))

    puts "Response status: #{status}"
    puts "Response body:"
    puts body
end