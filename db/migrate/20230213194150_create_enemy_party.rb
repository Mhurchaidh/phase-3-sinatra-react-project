class CreateEnemyParty < ActiveRecord::Migration[6.1]
  def change
    create_table :enemy_parties do |t|
      t.belongs_to :campaign
    end
  end
end
