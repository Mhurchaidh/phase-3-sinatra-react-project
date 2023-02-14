class Enemy < ActiveRecord::Base
    belongs_to :enemy_party
    has_many :battlegrounds
    has_many :characters, through: :battlegrounds
end