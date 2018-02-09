require_relative "answers"
require "colorize"

class Main
    attr_accessor :answers

    def initialize 
        @answers = Answers.new 
        welcome
    end
    def e_menu
        puts "Have a wonderful day!"
        exit
    end

    def welcome 
        puts "Welcome to the Magic Eight Ball!"
        puts "To exit at any time type 'exit'"
        puts "Ask me a question!"
        question = gets.strip.downcase
        answer = @answers.all.sample
        if question == "exit"
            e_menu
        elsif answer[:color] === "red"
            puts "#{answer[:response]}".colorize(:red)
        elsif answer[:color] === "green"
            puts "#{answer[:response]}".colorize(:green)
        else
            puts "#{answer[:response]}".colorize(:yellow)
        end
        welcome
    end
end

Main.new