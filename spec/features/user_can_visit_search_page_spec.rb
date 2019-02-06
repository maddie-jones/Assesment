require 'rails_helper'

describe 'as a user' do
  describe 'when I visit the search path' do
     it 'should show a list of closest stations' do
       visit search_path

       expect(page).to have_css(".nearest_stations")
       expect(page).to have_content("Nearest Stations")
       expect(page).to have_css(".station", count: 10)

       within(first(".station")) do
         expect(page).to have_css(".name")
         expect(page).to have_css(".address")
         expect(page).to have_css(".fuel_types")
         expect(page).to have_css(".access_times")
       end
     end
  end
end

# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
