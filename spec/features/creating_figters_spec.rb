require 'rails_helper'

feature 'Creating fighters' do
  scenario 'can create a new fighter' do
    visit '/'
    click_link 'New fighter'
    fill_in 'Name', with: 'Zergling'
    fill_in 'Last name', with: 'Speedling'
    fill_in 'Description', with: 'Basic unit of zerg army.'
    attach_file('Image', 'spec/fixtures/images/zergling.png')
    click_button 'Create'
    expect(page).to have_css("img[src*='zergling']")
    expect(page).to have_content('Zergling')
    expect(page).to have_content('Speedling')
    expect(page).to have_content('Basic unit of zerg army.')
  end
end
