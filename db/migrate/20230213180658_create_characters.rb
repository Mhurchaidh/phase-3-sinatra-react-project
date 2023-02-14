class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.belongs_to :party
      t.integer :health
      t.integer :mana
      t.integer :phys_attack
      t.integer :mag_attack
      t.integer :faith
      t.integer :ability_cd
    end
  end
end
