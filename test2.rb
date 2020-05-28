class Game

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
        puts "Hello! And welcome to the somethingsomething App."
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
    end



end 