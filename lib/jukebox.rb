require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def say_hello(name)
  "Hi #{name}!"
end

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end 

def list (songs)
  counter = 0 
  while counter < songs.length
    puts "#{counter + 1}. #{songs[counter]}"
    counter += 1
  end 
end 

def play (songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  user_response_int = user_response.to_i

  if (user_response_int < songs.length) && (user_response_int > 0)
    puts "Playing #{songs[user_response_int - 1]}"
  elsif songs.include? (user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end  
end 

def exit_jukebox
  puts "Goodbye"
end 

def run (user_input)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  
  while user_input != "exit"
    if user_input = "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input = "list"
      list
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input = "play"
      play 
    end 
  end 
  if user_input == "exit"
    exit
  end 
end 