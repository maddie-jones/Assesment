class Facade  
  def stations(zip_code)
    result = Service.new(zip_code).stations_by_distance
     result.map do |raw_station|
       Station.new(raw_station)
     end
  end
end
