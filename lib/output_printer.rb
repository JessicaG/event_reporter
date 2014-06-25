require 'colorize'

module OutputPrinter

  def intro_message
    puts "Welcome to Event Reporter, the easiest way to look at your CSV file!\nStart by (load)ing your file, go to (help) or (quit) to leave."
  end

  def outro_message
    puts "Thanks for using Event Reporter! Be sure to check back with us when you need to work with a CSV."
  end

  def invalid_command_message
    puts "That is in invalid command, check your syntax or use the help command to find more information"
  end

end
