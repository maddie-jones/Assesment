class Service
  def inialize(zip_code)
    @zip_code = zip_code
  end

  def stations_by_distance
    
  end

  def conn
    Faraday.new(:url => 'https://developer.nrel.gov') do |faraday|
      faraday.headers["api-Key"] = ENV["NREL_API_KEY"]
      faraday.adapter  Faraday.default_adapter
    end
  end

end
