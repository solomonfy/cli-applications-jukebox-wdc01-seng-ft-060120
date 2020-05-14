require "pry"
#  Add your code here
# # def say_hello(name)
# #   "Hi #{name}!"
# # end
# # puts "Enter your name:"
# # users_name = gets.strip
# # puts say_hello(users_name)
#
#
# def welcome
#   puts "Welcome!, Please enter a command:"
# end
#
#
#
# # def prompt_user
# #
# # end


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


# def play(songs)
#   puts "Please enter a song name or number:"
#   user_input = gets.chomp
#   songs.each do |song|
#   songs.each do |song_number|.to_i
#     if user_input == song
#       puts "Playing #{song}"
#     elsif user_input.to_i == song_number
#       puts "Playing #{song_number}"
#     elsif user_input != song
#     return "Invalid input, please try again"
#     # elsif user_input.to_i != song
#     #   puts "Invalid input, please try again"
#   end
#   end
# end
# end


def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  count = 0
  selected_song = songs[count]
  # selected_number = songs[count].to_i
  if user_input == selected_song
    puts "Playing #{selected_song}"
  elsif user_input.to_i >= 1 && songs.length >= user_input.to_i
    # binding.pry
    puts "Playing #{selected_song}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  count = 0
  while count < songs.length do
   puts "#{count + 1}. #{songs[count]}"
   count += 1
  songs
end
end


def exit_jukebox
  puts "Goodbye"
end

# # ######### runner ############

def run(song)
puts "Please enter a command:"
 user_input = gets.chomp

    if user_input == "list"
       list(song)
    elsif user_input == "play"
      play(song)
    elsif user_input ==  "help"
      help
    elsif user_input == "exit"
    exit_jukebox
  end
end
