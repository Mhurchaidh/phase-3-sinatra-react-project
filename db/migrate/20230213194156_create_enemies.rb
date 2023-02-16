class CreateEnemies < ActiveRecord::Migration[6.1]
  def change
    create_table :enemies do |t|
      t.belongs_to :enemy_party
      t.string :name
      t.string :enemy_class
      t.integer :health
      t.integer :max_health
      t.integer :mana
      t.integer :phys_attack
      t.integer :mag_attack
      t.string :ability_name
      t.integer :ability_cost
      t.integer :ability_cd
      t.string :ability_description
      t.boolean :dead, default: false
    end
  end
end
