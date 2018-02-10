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

    # def user_add
    #     puts "Please enter your suggestion"
    #     @sugg = gets.strip
    #     # puts "Is this a good, bad or neutral suggestion?"
    #     # col = gets.strip.downcase
    #     arr.new{name: } = @sugg
    # end

    def welcome 
        puts "Welcome to the Magic Eight Ball!"
        puts "To exit at any time type 'exit'"
        puts "Press E if you want to suggest an answer for the 8 ball"
        puts "Ask me a question!"
        question = gets.strip.downcase
        answer = @answers.all.sample
        if question == "exit"
            e_menu
        # if question == "e"
        #     user_add
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