class CreateEnemies < ActiveRecord::Migration[6.1]
  def change
    create_table :enemies do |t|
      t.belongs_to :enemy_party
      t.integer :health
      t.integer :phys_attack
      t.integer :mag_attack
      t.integer :ability_cd
    end
  end
end
