class AddAbilityManaCostCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :ability_cost, :integer
  end
end
