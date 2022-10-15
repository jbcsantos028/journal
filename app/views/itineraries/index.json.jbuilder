json.itineraries(@itineraries) do |itinerary|
  json.foobar itinerary.location
  json.customer_attribute itinerary.detail
end