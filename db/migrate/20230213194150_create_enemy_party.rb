class CreateEnemyParty < ActiveRecord::Migration[6.1]
  def change
    create_table :enemy_parties do |t|
      t.integer :power_level
      t.integer :enemy_count
    end
  end
end
