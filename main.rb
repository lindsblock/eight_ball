def welcome_menu
    puts "Welcome to the Magic Eight Ball!"
    puts "To exit at any time type 'exit'"
    puts "Ask me a question!"
    case
    when question = get.strip.downcase
        puts "#{@all.sample}"
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

exit_menu
welcome_menu
