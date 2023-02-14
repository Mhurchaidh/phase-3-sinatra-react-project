class Battleground < ActiveRecord::Base
    belongs_to :character
    belongs_to :enemy
end