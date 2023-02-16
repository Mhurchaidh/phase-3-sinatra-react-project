class Battleground < ActiveRecord::Base
    belongs_to :character
    belongs_to :enemy
    
    def self.attack attacker:, target:
        
        remaining_health = target[:health] - attacker.phys_attack - attacker.mag_attack
        target.update(health: remaining_health)
        Battleground.create(
            character_id: attacker.id,
            enemy_id: target.id,
            initiator: attacker.name,
            target: target.name,
            health_change: attacker.phys_attack + attacker.mag_attack,
            # skirmish_log: "#{created_at}: #{attacker.name} attacks #{target.name} for #{attacker.mag_attack == 0? attacker.phys_attack : attacker.mag_attack}"
        )
    end

    def self.reset 
        Battleground.destroy_all
        Character.all.each do |c| c.update(health: c.max_health) end
        Enemy.all.each do |e| e.update(health: e.max_health) end
    end
end