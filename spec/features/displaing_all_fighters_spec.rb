require 'rails_helper'

feature 'Displaying index fighters' do
  background do
    create(:fighter, name: 'fighter one')
    create(:fighter, name: 'fighter two')
    visit '/'
  end

  scenario 'the index lists all fighters' do
    expect(page).to have_content('fighter one')
    expect(page).to have_content('fighter two')
    expect(page).to have_css("img[src*='zergling']")
  end
end
