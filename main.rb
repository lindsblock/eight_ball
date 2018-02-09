require_relative "answers"
require "colorize"

class Main
    attr_accessor :answers

    def initialize 
        @answers = Answers.new 
        welcome
    end

    def welcome 
        puts "Welcome to the Magic Eight Ball!"
        puts "To exit at any time type 'exit'"
        puts "Ask me a question!"
        question = gets.strip
        answer = @answers.all.sample
        if answer[:color] === "red"
            puts "#{answer[:response]}".colorize(:red)
        elsif answer[:color] === "green"
            puts "#{answer[:response]}".colorize(:green)
        else 
            puts "#{answer[:response]}".colorize(:yellow)
        end   
    end

    def exit_menu
        puts "Confirm exit by typing 'exit'"
        case
        when gets.strip.downcase
            puts "Goodbye!"
            exit 
        end
    end
end

Main.new
