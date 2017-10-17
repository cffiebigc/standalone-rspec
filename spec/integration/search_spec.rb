require 'spec_helper'

feature 'Search for RSpec' do
  scenario 'should find the RSpec homepage' do
    visit '/'
    fill_in 'q', with: 'RSpec'
    click_button 'Recherche Google'

    expect(page).to have_content('rspec.info')
  end
end
