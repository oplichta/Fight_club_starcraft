require 'rails_helper'

feature 'Creating fights' do
  background do
    @fighter = create(:fighter, name: 'Ultralisk', experience: 20)
    fighter_2 = create(:fighter, name: 'Marine')

    create(:skill, fighter_id: @fighter.id)
    create(:skill, name: 'speed', fighter_id: @fighter.id)

    create(:skill, fighter_id: fighter_2.id)
    create(:skill, name: 'speed', fighter_id: fighter_2.id)
    create(:skill, name: 'armor', fighter_id: fighter_2.id)

    visit '/fights'
    click_link 'New fight'
  end

  scenario 'can create a new fight' do
    create(:skill, name: 'armor', fighter_id: @fighter.id)
    select('Ultralisk', from: 'fight_fighter_id')
    select('Marine', from: 'fight_fighter_2_id')
    click_button 'Create Fight'
    expect(page).to have_content('Ultralisk wins')
  end

  scenario 'cant create a fight when one of players dont have 3 skills' do
    select('Ultralisk', from: 'fight_fighter_id')
    select('Marine', from: 'fight_fighter_2_id')
    click_button 'Create Fight'
    expect(page).to have_content('One of players dont have at least 3 skills')
  end
end
