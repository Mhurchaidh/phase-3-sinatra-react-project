class CreateBattlegrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :battlegrounds do |t|
      t.belongs_to :character
      t.belongs_to :enemy
      t.integer :turn_counter
      t.integer :initiator
      t.integer :target
    end
  end
end
