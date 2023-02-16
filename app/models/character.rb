class Character < ActiveRecord::Base
    belongs_to :party
    has_many :battlegrounds
    has_many :enemies, through: :battlegrounds

    def attack enemy
        remaining_health = enemy.health - self.phys_attack - self.mag_attack
        enemy.update(health: remaining_health)
        puts "#{self.character_name} attacks #{enemy.enemy_name} for #{self.mag_attack == 0? self.phys_attack : self.mag_attack}"
        enemy.health
        Battleground.create(
            character_id: self.id,
            enemy_id: enemy.id,
            initiator: self.character_name,
            target: enemy.enemy_name
        )
    end
end