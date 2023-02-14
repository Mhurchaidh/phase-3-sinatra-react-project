class AddManaColumnToEnemies < ActiveRecord::Migration[6.1]
  def change
    add_column :enemies, :mana, :integer
  end
end
