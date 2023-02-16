class EnemyParty < ActiveRecord::Base
    has_many :enemies
    belongs_to :campaign
end