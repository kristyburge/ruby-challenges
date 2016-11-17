require 'rubygems'
require 'twilio-ruby'

account_sid = "" # Your Account SID from www.twilio.com/console
auth_token = "" # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token

# CREATE AN ARRAY OF POSSIBLE ANSWERS FROM THE MAGIC8 BALL
answers = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes, definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]

# ASK USER FOR THE QUESTION
puts "What is your question for the Magic 8 Ball?"
question = gets.chomp

shake = rand(1..20)

message = @client.account.messages.create(
  :from => "+1xxxxxxxxxx",
  :to => "+1xxxxxxxxxx",
  :body => "You asked: #{question} Here is my answer: #{answers[shake]}"
)

puts message.to
