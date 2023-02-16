class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.belongs_to :party
      t.string :name
      t.string :character_class
      t.integer :health
      t.integer :max_health
      t.integer :mana
      t.integer :phys_attack
      t.integer :mag_attack
      t.integer :faith
      t.string :ability_name
      t.integer :ability_cost
      t.integer :ability_cd
      t.string :ability_description
      t.boolean :taunting?, default: false 
      t.boolean :dead, default: false
    end
  end
end
