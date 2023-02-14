class AddNameAndClassColumnsToEnemies < ActiveRecord::Migration[6.1]
  def change
    add_column :enemies, :enemy_name, :string
    add_column :enemies, :enemy_class, :string
  end
end
