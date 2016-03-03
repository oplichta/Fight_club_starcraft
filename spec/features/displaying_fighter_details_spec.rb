require 'rails_helper'

feature 'Displaying individual fighter' do
  background do
    create(:fighter, fights_count: 5 , win: 4 , lose: 1 , experience: 40)
    visit '/'
    find(:xpath, "//a[contains(@href,\"fighters/1\")]").click
  end

  scenario 'can show details of fighter' do
    expect(page).to have_css("img[src*='zergling']")
    expect(page.current_path).to eq(fighter_path(1))
    expect(page).to have_content('Fights count 5')
    expect(page).to have_content('Fights won 4')
    expect(page).to have_content('Fights lost 1')
    expect(page).to have_content('Experience 40')
  end
end
