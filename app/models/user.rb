class User < ActiveRecord::Base
    has_many :builds
    has_many :brawls

    def self.tty_prompt
        TTY::Prompt.new
    end
end