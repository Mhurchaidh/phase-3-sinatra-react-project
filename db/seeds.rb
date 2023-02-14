puts "Clearing previous data..."
Character.destroy_all
Enemy.destroy_all
Battleground.destroy_all

puts "Generating Characters..."
Character.create(
    character_name: 'Warrior',
    character_class: 'Warrior',
    health: 120,
    mana: 50,
    phys_attack: 20,
    mag_attack: 0,
    faith: 0,
    ability_name: 'Taunt',
    ability_cd: 3,
    ability_cost: 8,
    ability_description: 'Draw the enemies attention, directing their attacks towards you. Decreases all damage taken this round by 25%.'
)
Character.create(
    character_name: 'Mage',
    character_class: 'Mage',
    health: 80,
    mana: 150,
    phys_attack: 0,
    mag_attack: 25,
    faith: 0,
    ability_name: 'Fireball',
    ability_cd: 3,
    ability_cost: 15,
    ability_description: 'Hurl a giant fireball at your enemies. Deals splash damage.'
)
Character.create(
    character_name: 'Priest',
    character_class: 'Priest',
    health: 90,
    mana: 150,
    phys_attack: 0,
    mag_attack: 12,
    faith: 30,
    ability_name: 'Heal',
    ability_cd: 2,
    ability_cost: 15,
    ability_description: 'Replenish a moderate amount of health to a chosen party member.'
)

puts "Generating Enemies..."
Enemy.create(
    enemy_name: 'Orc 1',
    enemy_class: 'Warrior',
    health: 90,
    mana: 0,
    phys_attack: 20,
    mag_attack: 0,
    ability_cd: nil,
    ability_name: nil,
    ability_description: nil,
    ability_cost: nil
)
Enemy.create(
    enemy_name: 'Orc 2',
    enemy_class: 'Warrior',
    health: 90,
    mana: 0,
    phys_attack: 20,
    mag_attack: 0,
    ability_cd: nil,
    ability_name: nil,
    ability_description: nil,
    ability_cost: nil
)
Enemy.create(
    enemy_name: 'Orc 3',
    enemy_class: 'Warrior',
    health: 90,
    mana: 0,
    phys_attack: 20,
    mag_attack: 0,
    ability_cd: nil,
    ability_name: nil,
    ability_description: nil,
    ability_cost: nil
)
Enemy.create(
    enemy_name: 'Orc 4',
    enemy_class: 'Warrior',
    health: 90,
    mana: 0,
    phys_attack: 20,
    mag_attack: 0,
    ability_cd: nil,
    ability_name: nil,
    ability_description: nil,
    ability_cost: nil
)
Enemy.create(
    enemy_name: 'Orc Shaman',
    enemy_class: 'Priest',
    health: 150,
    mana: 200,
    phys_attack: 0,
    mag_attack: 12,
    ability_cd: 5,
    ability_name: "Heal",
    ability_description: 'Replenish a moderate amount of health to a chosen party member.',
    ability_cost: 15
)

puts "✅ Done seeding!"
