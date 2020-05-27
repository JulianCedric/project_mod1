class Suit < ActiveRecord::Base
    has_many :builds
    has_many :users, through: :builds 
    has_many :technologies
    has_many :abilities, through: :technologies 
end