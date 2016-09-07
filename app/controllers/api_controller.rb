require 'pok_map'
class ApiController < ApplicationController
  def load
    neLat=params[:lat]
    neLng=params[:lng]
    swLat=neLat.to_f+1
    swLng=neLng.to_f+1
    pokmap = PokMap.new()
    res = pokmap.load(neLat,neLng,swLat,swLng)
    @result = ActiveSupport::JSON.decode(res.body)
  end
  def update
    # Request URL:https://pokmap.ru/api/update/?lat=46.47827053898567&lng=30.742526062011716
    lat = params[:lat]
    lng = params[:lng]
    pokmap = PokMap.new()
    res = pokmap.update(lat,lng)
    @result = ActiveSupport::JSON.decode res.body
    # @result = ActiveSupport::JSON.decode(res.body)
  end
end
