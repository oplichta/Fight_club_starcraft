require 'rails_helper'

feature 'Creating skills' do
  scenario 'can add skill to fighter' do
    create :fighter
    visit '/'
    find(:xpath, "//a[contains(@href,\"fighters/1\")]").click
    fill_in 'Add name of skill...', with: 'speed'
    fill_in 'Add value of skill...', with: '5'
    click_button 'Submit'
    expect(page.current_path).to eq(fighter_path(1))
    expect(page).to have_content('speed 5')
  end
end
