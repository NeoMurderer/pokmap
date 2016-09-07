json.array!(@result) do |pokemon|
  json.id pokemon['id']
  json.title pokemon['title']
  json.lng pokemon['lng']
  json.lat pokemon['lat']
  json.icon pokemon['icon']
  json.expired pokemon['expired']
  json.currentTimestamp pokemon['currentTimestamp']
end
