class AddNameAndClassColumnsToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :character_name, :string
    add_column :characters, :character_class, :string
  end
end
