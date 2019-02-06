class Service
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def stations_by_distance(url)
    get_json('/api/alt-fuel-stations/v1/nearest.json')
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
      faraday.headers["api_key"] = ENV["NREL_API_KEY"]
      faraday.params["location"] = @zip_code
      faraday.adapter  Faraday.default_adapter
    end
  end

  def get_json(url)
    binding.pry
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
