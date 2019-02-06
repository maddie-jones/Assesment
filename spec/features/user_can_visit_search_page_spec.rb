require 'rails_helper'

describe 'as a user' do
  describe 'when I visit the search path' do
     it 'should show a list of closest stations' do
       visit search_path

       expect(page).to have_css(".nearest_stations", count: 10)
       expect(page).to have_content("Nearest Stations")
     end
  end
end

# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
