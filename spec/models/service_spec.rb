require 'rails_helper'

describe Service do

  describe "stations_by_distance" do
    it "finds all CO members" do
        members = Service.stations_by_distance("80203")
        station = stations.first

        expect(stations.count).to eq(10)
        expect(station[:name]).to eq("Diana DeGette")
        expect(station[:party]).to eq("D")
        expect(station[:district]).to eq("1")
    end
  end
end
