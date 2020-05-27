class Ability < ActiveRecord::Base
    has_many :technologies
    has_many :magicologies 
end