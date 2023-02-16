class Battleground < ActiveRecord::Base
    belongs_to :character
    belongs_to :enemy
    
    def self.attack attacker:, target:
        
        remaining_health = target[:health] - attacker.phys_attack - attacker.mag_attack
        case remaining_health
        when ..0 
            then
            target.update(health: 0)
            target.update(dead: true)
            Battleground.create(
            character_id: attacker.id,
            enemy_id: target.id,
            initiator: attacker.name,
            target: target.name,
            health_change: attacker.phys_attack + attacker.mag_attack,
            skirmish_log: "#{attacker.name} has slain #{target.name}"
        )
        else 
            target.update(health: remaining_health)
            Battleground.create(
                character_id: attacker.id,
                enemy_id: target.id,
                initiator: attacker.name,
                target: target.name,
                health_change: attacker.phys_attack + attacker.mag_attack,
                skirmish_log: "#{attacker.name} attacks #{target.name}"
            )
        end
    end

    def self.reset 
        Battleground.destroy_all
        Character.all.each do |c| c.update(health: c.max_health, dead: false) end
        Enemy.all.each do |e| e.update(health: e.max_health, dead: false) end
    end
end