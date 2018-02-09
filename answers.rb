
class Answers
    attr_reader :all
    def initialize
    
    @all = [{response: 'It is certain', color: 'green'}, {response: 'It is decidedly so', color: 'green'}, {response: 'Without a doubt', color: 'green'}, {response: 'Yes definatly', color: 'green'}, 
    {response: 'You may rely on it', color: 'green'}, {response: 'As I see it, yes', color: 'green'}, {response: 'Most likely', color: 'green'}, {response: 'Outlook good', color: 'green'}, 
    {response: 'YES', color: 'green'}, {response: 'Signs point to yes', color: 'green'}, {response: 'Future hazy, try again', color: 'yellow'}, {response: 'Ask again later', color: 'yellow'}, 
    {response: 'Better not tell you now'}, {response: 'Cannot predict now'}, {response: 'Concentrate and ask again'}, 
    {response: "Don't count on it", color: 'red'}, {response: 'My reply is NO', color: 'red'}, {response: 'My sources say no', color: 'red'}, 
    {response: 'Outlook not so good', color: 'red'}, {response: 'Very doubtful', color: 'red'}]
    end

end