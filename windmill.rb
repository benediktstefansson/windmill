
require 'rubygems'
require 'net/http'
require 'date'
 
def fetch(url)
   resp = Net::HTTP.get_response(URI.parse(url)).body
end
 
puts "#{DateTime.now.to_s} #{fetch "http://www.landsvirkjun.is/windmill_data/winddata.html"}"

