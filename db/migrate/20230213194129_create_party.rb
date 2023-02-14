class CreateParty < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.integer :power_level
      t.integer :character_count
    end
  end
end
