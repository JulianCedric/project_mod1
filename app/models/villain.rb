class Villain < ActiveRecord::Base
    has_many :brawls
    has_many :users, through: :brawls 
    has_many :magicologies
    has_many :abilities, through: :magicologies  
end