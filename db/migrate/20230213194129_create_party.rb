class CreateParty < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.belongs_to :campaign
    end
  end
end
