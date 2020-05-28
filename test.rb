rake db:create_migration NAME=create_users
rake db:create_migration NAME=create_builds
rake db:create_migration NAME=create_brawls
rake db:create_migration NAME=create_suits
rake db:create_migration NAME=create_villains
rake db:create_migration NAME=create_technologies
rake db:create_migration NAME=create_magicologies
rake db:create_migration NAME=create_abilities

User.destroy_all
Build.destroy_all
AbilityVillain.destroy_all
Suit.destroy_all
Villain.destroy_all
AbilitySuit.destroy_all
Ability.destroy_all 

adam = User.create(name: "Adam")
belle = User.create(name: "Belle")
chris = User.create(name: "Chris")

suit1 = Suit.create(name: "Suit1")
suit2 = Suit.create(name: "Suit2")
suit3 = Suit.create(name: "Suit3")
suit4 = Suit.create(name: "Suit4")
suit5 = Suit.create(name: "Suit5")
suit6 = Suit.create(name: "Suit6")

build1 = Build.create(name: "Build1", user_id: adam.id, suit_id: suit1.id)
build2 = Build.create(name: "Build2", user_id: adam.id, suit_id: suit2.id)
build3 = Build.create(name: "Build3", user_id: adam.id, suit_id: suit3.id)
build4 = Build.create(name: "Build4", user_id: belle.id, suit_id: suit4.id)
build5 = Build.create(name: "Build5", user_id: belle.id, suit_id: suit5.id)
build6 = Build.create(name: "Build6", user_id: belle.id, suit_id: suit6.id)

class App
    attr_reader :user, :build, :brawl, :suit, :villain, :technology, :magicology, :ability
    def run
        system "clear"
        welcome
        login_or_signup
        build_or_brawl
        to_be_continued
    end
    def welcome
        puts "Hello! And welcome to the MarvelApp."
        sleep(1)
        puts " "
    end
    def login_or_signup
        puts "Please enter your first name to get started."
        sleep(1)
        a = gets.chomp
        puts " "
        sleep(1)
        puts "Great! Thanks, #{a.capitalize}."
        sleep(2)
        puts " "
        puts "Since it's your first time here, how about a quick tour around?"
        sleep(3)
        puts " "
    end
    def build_or_brawl
        puts "This app let's you step into the shoes of Ironman himself." 
        sleep(3) 
        puts " "
        puts "The great, and awesome Tony Stark."
        sleep(200)
        puts " "
        puts "And do two of the things he does best:"
        sleep(2)
        puts " "
        puts "Build.. "
        sleep(2)
        puts " "
        puts ".. and Brawl."
        sleep(1) 
        puts " " 
        puts "Which one would you like to explore first?"
        sleep(2)
        puts " "
        puts "Type either 'Build' or 'Brawl'."
        sleep(1)
        b = gets.chomp 
        puts " "
        sleep(1)
        puts "#{b.capitalize}.. awesome choice. " 
        sleep(1)
        puts " "   
    end

    def to_be_continued
        puts "To be continued.. "
    end

end