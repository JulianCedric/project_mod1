class User 
    @@all = [] 
    attr_accessor :name
    def initialize(name) 
        @name = name
        User.all << self 
    end
    def self.all 
        @@all 
    end
    def sessions
        # Returns all sessions associated with a particular user.
        Session.all.select do |s|
            s.user == self
        end
    end
    def suits
        sessions.map do |s|
            s.suit
        end
    end
    def sessions_counter
        x = sessions.select do |s|
            s.status == "complete" 
        end
        x.count  
    end 
end
# 
class Session
    @@all = [] 
    attr_accessor :name, :status, :user, :suit  
    def initialize(name, status, user, suit=nil) 
        @name = name
        @status = status     
        @user = user 
        @suit = suit
        Session.all << self
    end
    def self.all 
        @@all 
    end
    def change_status_to_incomplete
        @status = "incomplete"
    end
end
class Suit  
    @@all = [] 
    attr_accessor :name
    def initialize(name) 
        @name = name
        Suit.all << self 
    end
    def self.all 
        @@all 
    end
    def abilities
        Ability.all.select do |a|
            a.suit == self 
        end
    end
end
class Ability 
    @@all = []
    attr_accessor :name, :suit, :villain
    def initialize(name, suit, villain)
        @name = name
        @suit = suit 
        @villain = villain
        Ability.all << self  
    end
    def self.all
        @@all 
    end
end
class Villain  
    @@all = [] 
    attr_accessor :name
    def initialize(name) 
        @name = name
        Villain.all << self 
    end
    def self.all 
        @@all 
    end
    def abilities 
        Ability.all.select do |a|
            a.villain == self 
        end
    end
end

adam = User.new("Adam")
suit1 = Suit.new("Suit1")
suit2 = Suit.new("Suit2")
session1 = Session.new("Session1", "complete", adam)
session2 = Session.new("Session2", "complete", adam)
session3 = Session.new("Session3", "complete", adam, suit1)
villain1 = Villain.new("Villain1")
ability1 = Ability.new("Ability", suit1, villain1)

puts " "
puts "Tests"
puts " "
puts "User methods:"
puts adam 
puts adam.sessions
puts adam.suits 
puts " "
puts "Suit methods:"
puts suit1 
puts suit1.abilities
puts " "
puts "Villain methods:"
puts villain1
puts villain1.abilities 
puts " "
puts "Additional / Miscellaneous:"
puts adam.sessions_counter