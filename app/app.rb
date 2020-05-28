class App
    attr_reader :user, :build, :brawl, :suit, :villain, :technology, :magicology, :ability
    # def run
    #     system "clear"
    #     welcome
    # end
    # def welcome
    #     puts "Hello! And welcome to the MarvelApp."
    #     sleep(10)
    #     puts " "
    #     puts "You're 10 seconds in.. "
    #     sleep(5)
    #     puts " "
    #     puts "Final stretch.. just 5 seconds to go!"
    #     sleep(4)
    #     puts " "
    #     puts "DONE."
    # end

    def start
        introduction
        welcome
        first_build
    end

    def introduction
        puts "J.A.R.V.I.S. initializing"
        sleep(5)
        puts " "
    end

    def welcome
        puts "Hello! And welcome to the [insert app name here] App!"
        sleep(1)
        puts " "
        puts "Please enter your first name to get started."
        sleep(1)
        a = gets.chomp
        puts " "
        sleep(1)
        puts "Great! Thanks, #{a.capitalize}."
        sleep(2)
        puts " "
        puts "How about we jump right in and start our first 'Build Session' for you."
        sleep(3)
        puts " "
    end

    def first_build
        build_day1 = Build.new(name: "Build 1/21", user_id: A.id, suit_id: suit1.id)
        puts "Ready?"
        
        
    end


    def rules
        puts "Now, the rules of a build session are quite simple."
        sleep(1)
        puts " "
        puts "For the next 25-minutes, you're allowed to do nothing else but practice code."
        sleep(2)
        puts " "
        puts "You'll see time-stamps and various messages throughout the session."
        sleep(1)
        puts " "
        puts "Good luck!"
        sleep(1)
        puts "Are you ready?"
        puts "Please enter 'Y'"
        x = gets.chomp 
        if x == "Y"
            build_day1 = Build.new(name: "Build 1/21", user_id: A.id, suit_id: suit1.id)
        else 
            puts "Please enter 'Y' whenever you're ready."
        end
    end
      


    end



end