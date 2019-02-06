class Facade
  def stations
    result = Service.new.stations_by_distance
     result.map do |raw_station|
       Station.new(raw_station)
     end
  end
end
