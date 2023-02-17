class Battleground < ActiveRecord::Base
    belongs_to :character
    belongs_to :enemy
    
    def attack attacker:, target:
        
        remaining_health = target[:health] - attacker.phys_attack - attacker.mag_attack
        case remaining_health
        when ..0 
            then
            target.update(health: 0)
            target.update(dead: true)
            self.update(skirmish_log: "#{attacker.name} has slain #{target.name}")
        
        else 
            target.update(health: remaining_health)
        end
    end

    def self.reset 
        Battleground.destroy_all
        Character.all.each do |c| c.update(health: c.max_health) end
        Enemy.all.each do |e| e.update(health: e.max_health, dead: false) end
    end
end