class CreateBattlegrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :battlegrounds do |t|
      t.belongs_to :character
      t.belongs_to :enemy
      t.integer :turn_counter
      t.string :initiator
      t.string :target
      t.integer :health_change
      # t.string :skirmish_log
      t.timestamps
    end
  end
end
