require_relative 'search_command'
require 'colorize'

class CLI
  attr_reader :search_command, :print_command

  def initialize
    @search_command = SearchCommand.new
    @print_command  = PrintCommand.new
  end

  def process_input(input)
    input.split
  end

  def run
    system('clear')
    puts "\nWelcome to Event Reporter, the easiest way to search your CSV file!\n
            Here are your options:\n
            (load) to bring in your file,
            (help) to see your options,
            (quit) to leave."
    command = ''
    until command == 'quit'
      print "\nEnter your command: ".colorize(:red)
      parts      = gets.strip.split
      command    = parts[0]
      parameters = parts[1..-1]
      # puts "command is #{command}"
      case command
        when "load"
          search_command.load_file
        when "help"
          print_command.general_help
        when "queue"
          execute_queue_command(parameters)
        when "find"
          search_command.find_by(parts[1], parts[2])
        when "quit"
          exit
        else
          puts "That's not an option.  Try again or type (help)."
      end
    end
    puts "\nGood Bye.\n"
  end

  def execute_queue_command(sub_command)
    # puts "sub command is #{sub_command[0]}"
    case sub_command[0]
      when 'count'
        count = search_command.queue_count
      when 'clear'
        search_command.queue_clear
      when 'print'
        case sub_command[1]
          when 'by'
            search_command.queue_print_by_attribute(sub_command[2])
        end
        search_command.queue_print
      when 'save'
        case sub_command[1]
          when 'to'
            search_command.queue_save_by(sub_command[2])
        end
    end
  end
end
