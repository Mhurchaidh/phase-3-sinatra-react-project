class ChangeColumnInBattlegrounds < ActiveRecord::Migration[6.1]
  def change
    change_column :battlegrounds, :initiator, :string
    change_column :battlegrounds, :target, :string
  end
end
