require 'rails_helper'

feature 'Creating skills' do
  background do
    create :fighter
    visit '/'
    find(:xpath, "//a[contains(@href,\"fighters/1\")]").click
  end

  scenario 'add skill to fighter' do
    fill_in 'Add name of skill...', with: 'speed'
    select('5', from: 'skill_value')
    click_button 'Create Skill'
    expect(page.current_path).to eq(fighter_path(1))
    expect(page).to have_content('speed 5')
  end

  scenario 'cant add more than 8 skills to fighter' do
    8.times do |x|
      fill_in 'Add name of skill...', with: 'speed'+ x.to_s
      select('5', from: 'skill_value')
      click_button 'Create Skill'
    end
    expect(page.current_path).to eq(fighter_path(1))
    expect(page).to have_content('speed1 5')
    expect(page).to_not have_content('Add name of skill...')
  end
end
