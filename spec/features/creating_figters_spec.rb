require 'rails_helper'

feature 'Creating fighters' do
  background do
    visit '/'
    click_link 'New fighter'
    fill_in 'Name', with: 'Zergling'
    fill_in 'Last name', with: 'Speedling'
    fill_in 'Description', with: 'Basic unit of zerg army.'
  end

  scenario 'can create a new fighter' do
    attach_file('fighter_image', 'spec/fixtures/images/zergling.png')
    click_button 'Create'
    expect(page).to have_css("img[src*='zergling']")
    expect(page).to have_content('Zergling')
    expect(page).to have_content('Speedling')
    expect(page).to have_content('Basic unit of zerg army.')
  end

  scenario 'to create needs an image' do
    click_button 'Create'
    expect(page).to_not have_css("img[src*='zergling']")
    expect(page).to have_content('Halt! You need an image to create fighter!')
  end
end
