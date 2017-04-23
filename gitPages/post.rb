# curl -i -H 'Authorization: token cd74f838d39f1e8b0cd107698b721ed4ad677744' -d '{"name":"POSTRepo"}' https://api.github.com/user/repos

require 'net/http'
require 'uri'
require 'json'

uri = uri = URI.parse("https://api.github.com/users/username")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

headers = { "Authentication" => "cd74f838d39f1e8b0cd107698b721ed4ad677744" }
request = Net::HTTP::Get.new(uri.request_uri, headers)
response = http.request(request)
response.body # => A string containing the JSON response

puts response

puts response.body