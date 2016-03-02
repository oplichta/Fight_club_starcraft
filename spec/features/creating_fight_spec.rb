require 'rails_helper'

feature 'Creating fights' do
  scenario 'can create a new fight' do
    fighter = create(:fighter, name: 'Ultralisk', experience: 20)
    fighter_2 = create(:fighter, name: 'Marine')
    visit '/fights'
    select('Ultralisk', :from => 'Select the first fighter')
    select('Marine', :from => 'Select the second fighter')
    click_button('Create fight')
    expect(page).to have_content('Ultralisk wins')
  end
end
