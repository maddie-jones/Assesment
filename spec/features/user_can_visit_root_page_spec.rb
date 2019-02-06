require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end
  describe 'when I visit root page' do
    describe 'fill in form' do
      it 'should direct me to /search' do
        visit '/'

        fill_in :q, with: '80203'
        click_on 'Locate'

        expect(current_path).to eq(search_path)
      end
    end
  end
end
