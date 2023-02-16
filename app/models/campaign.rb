class Campaign < ActiveRecord::Base
    has_many :parties
    has_many :enemy_parties
end