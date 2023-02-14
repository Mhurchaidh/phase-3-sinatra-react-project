class AddAbilityManaCostEnemies < ActiveRecord::Migration[6.1]
  def change
    add_column :enemies, :ability_cost, :integer
  end
end
