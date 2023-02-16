class Party < ActiveRecord::Base
    has_many :characters
    belongs_to :campaign
end