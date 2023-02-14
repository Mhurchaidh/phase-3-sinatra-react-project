class AddColumnsToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :ability_name, :string
    add_column :characters, :ability_description, :text
  end
end
