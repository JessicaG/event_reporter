require_relative 'print_command'
require_relative 'search_command'
require 'pry'
# require 'terminal-table'

class CLI
  attr_reader :search_command, :print_command

  def initialize
    @search_command = SearchCommand.new
    @print_command  = PrintCommand.new
  end

  def process_input(input)
    input.split
  end

  #how to clear/push your prompt to clear when program is started#
  def run
    puts "Welcome to Event Reporter, the easiest way to look at your CSV file!\nStart by (load)ing your file, go to (help) or (quit) to leave."
    command = ''
    until command == 'quit'
      print "\nEnter your command: "
      parts      = gets.strip.split
      command    = parts[0]
      parameters = parts[1..-1]
      puts "command is #{command}"
      case command
        when "load"
          search_command.load_file
        when "help"
          print_command.general_help
        when "queue"
          execute_queue_command(parameters)
        when "find"
          search_command.find_by(parts[1], parts[2])
      end
    end
    puts "\nGood Bye.\n"
  end

  def execute_queue_command(sub_command)
    # parts = sub_command.split
    # until command
    puts "sub command is #{sub_command[0]}"
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
      # when 'save'
      #   case sub_command[1]
      #     when 'as'
      #       search_command.queue_save_by
      #   end
    end
  end
end

# if parameters[2] == 'by'
#   search_command.execute(queue, parameters[3])
# else
# def execute(@queue, parameters[3])
#   @queue.sort_by(parameters[3])
# end



# case parts[1..2].join(" ")
#     when 'print by'
#       assign_queue_command(parts, 2)
#       assign_queue_parameters(parts, 2)
#
#     when 'save to'
#       assign_queue_command(parts, 2)
#       assign_queue_parameters(parts, 2)
#     end
# #
# # command = parts[0..1]
# # parameters = parts[2..-1].join
# # when "queue print_by"
# #   search_command.print_by(parts[2])
