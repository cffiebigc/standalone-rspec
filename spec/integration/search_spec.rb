require 'spec_helper'

feature 'Visit homepage' do
  scenario 'should find portal homepage' do
    visit '/'
    expect(page).to have_content('Integrarte con un banco ahora')
  end
end
