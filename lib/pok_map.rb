require "http"
class PokMap

  def initialize
    @baseurl =  'https://pokmap.ru/'
    @headers = {
     'RequestVerificationToken' => "CfDJ8Jwt619pvOtLh0nb87l30WvLi1CLmEUIdJb3L7_ayfdYRHyER9PuhS2IauYX5HVlRI7woVN2J1KoJglS2vX_SHK3lzClHJXkIxruQ2JozqAbUXDdCrMUVe-xF74Zg9wsaZ3GXlnMG10upsWTwXsRLEY",
     'X-Requested-With' => "XMLHttpRequest",
     'Cookie' => "_ym_uid=1472826058629350573; ARRAffinity=0b38248f4c826a5e6afc0d9d0f006100151c488af4a4e237427aae6b735e6e9e; .AspNetCore.Antiforgery.w5W7x28NAIs=CfDJ8Jwt619pvOtLh0nb87l30WtT2gztB3H2AhOqPy5qlvyX3L6CMDyDtSo1hhnaUm0ZIKewbEarXcQHXTJbbCpQ128vbHfyE2Qb08MsDr4WMMQS_R9mTISq9znvjbOOPLxFN5BxA7NrQUIkVHLxTZgMr_U; _ga=GA1.2.1944596276.1472826058; _gat=1; _ym_isad=1; _ym_visorc_38641775=w"
    }
  end
  def load(neLat,neLng,swLat,swLng)
    options = {
      :neLat => neLat,
      :neLng => neLng,
      :swLat => swLat,
      :swLng => swLng
    }
    HTTP.headers(@headers).get(@baseurl + "/api/load",:params => options)
  end
  def update(lat,lng)
    options = {
      :lat => lat,
      :lng => lng
    }
    HTTP.headers(@headers).get(@baseurl + "/api/update",:params => options)
  end

end
