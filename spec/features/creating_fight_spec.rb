require 'rails_helper'

feature 'Creating fights' do
  scenario 'can create a new fight' do
    fighter = create(:fighter, name: 'Ultralisk', experience: 20)
    fighter_2 = create(:fighter, name: 'Marine')
    create(:skill, fighter_id: fighter.id)
    create(:skill, fighter_id: fighter.id)
    create(:skill, fighter_id: fighter.id)

    create(:skill, fighter_id: fighter_2.id)
    create(:skill, fighter_id: fighter_2.id)
    create(:skill, fighter_id: fighter_2.id)

    visit '/fights'
    click_link 'New fight'
    select('Ultralisk', :from => 'fight_fighter_id')
    select('Marine', :from => 'fight_fighter_2_id')
    click_button 'Create Fight'
    expect(page).to have_content('Ultralisk wins')
  end
end
