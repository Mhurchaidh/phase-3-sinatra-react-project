class AddColumnsToEnemies < ActiveRecord::Migration[6.1]
  def change
    add_column :enemies, :ability_name, :string
    add_column :enemies, :ability_description, :text
  end
end
