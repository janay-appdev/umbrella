p "Where are you located?"

# user_location= gets.chomp

# p user_location

user_location = "Merchandise Mart"

# Got to google maps
# search for user location 
#find the lat/lon somewhere in HTML

gmaps_api_url="https://maps.googleapis.com/maps/api/geocode/json?address="+ user_location+ "&key=AIzaSyB92cYxPcYqgjwBJfWlwDQw_7yjuyU3tpA"

p gmaps_api_url
require"open-uri"
URI.open(gmaps_api_url)

raw_response= URI.open(gmaps_api_url).read
p raw_response.class

require "json"

parsed_data= JSON.parse(raw_response)


results_array= parsed_data.fetch("results")

first_results=results_array.at(0)

geo = first_results.fetch("geometry")

loc=geo.fetch("location")

latitude=loc.fetch("lat")
longitude=loc.fetch("lng")

p latitude
p longitude
