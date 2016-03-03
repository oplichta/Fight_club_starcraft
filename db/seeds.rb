#Fighters
Fighter.create([
  { name: 'Zergling', last_name: 'Zerg', description: 'Basic zerg unit',
  image: File.new('app/assets/images/zergling.jpg'), fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Ultralisk', last_name: 'Zerg', description: 'The best zerg unit',
  image: File.new('app/assets/images/ultralisk.jpg'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Mutalisk', last_name: 'Zerg', description: 'Flying zerg unit',                                  image: File.new('app/assets/images/mutalisk.jpg'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Marine', last_name: 'Terran', description: 'Basic terran unit',                                  image: File.new('app/assets/images/marine.jpg'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Marouder', last_name: 'Terran', description: 'Good aganist armored units', image: File.new('app/assets/images/marouder.jpg'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Hellbat', last_name: 'Terran', description: 'Mechanical terran unit',                                  image: File.new('app/assets/images/hellbat.png'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Zelot', last_name: 'Protoss', description: 'Basic protoss unit',                                  image: File.new('app/assets/images/zelot.png'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Stalker', last_name: 'Protoss', description: 'Range protoss unit',                                  image: File.new('app/assets/images/stalker.jpg'),fights_count: '0', win: '0', lose: '0', experience: '0' },
  { name: 'Sentry', last_name: 'Protoss', description: 'Can create forcefields',                                  image: File.new('app/assets/images/sentry.png'),fights_count: '0', win: '0', lose: '0', experience: '0' }
])

#Skills
9.times do |x|
  Skill.create([
    { fighter_id: x+1, name: 'Armor', value: rand(0..5) },
    { fighter_id: x+1, name: 'Speed', value: rand(0..5) },
    { fighter_id: x+1, name: 'Life', value: rand(0..5) }
  ])
end
