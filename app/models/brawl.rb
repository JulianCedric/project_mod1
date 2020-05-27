class Brawl < ActiveRecord::Base
    belongs_to :user
    belongs_to :villain
end