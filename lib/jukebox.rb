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
  end 
end 

def play (songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if 0 < user_response.to_i < songs.length
    puts "Playing #{songs[user_response.to_i]}"
  end 

  songs.each do |song_title|
    if song_title.include? (user_response)
      puts "Playing #{song_title}"
    else
      puts "Invalid input, please try again"
    end
  end 
end 



puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)

