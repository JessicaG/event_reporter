require_relative 'print_command'
require_relative 'search_command'
require 'pry'

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
      parameters = parts[1..-1].join
      puts "command is #{command}"
      case command
        when "load"
          search_command.load_file
        when "help"
          print_command.general_help
        # when "queue"
        #   execute_queue_command(paramters)
        when "find"
          search_command.find_by(parts[1], parts[2])
          puts "ran find"
      end
    end
    puts "\nGood Bye.\n"
  end


  def execute_queue_command(sub_command)
    puts "sub command is #{sub_command}"
    case sub_command
    when 'count'
      search_command.queue_count
    # when 'clear'
    #   search_command.queue_clear
    # when 'print'
    #   print_command.queue_print
    # when 'print by'
    #   print_command.print_by
    end
  end

end

#   def execute_instructions
#     case command
#     when 'find #{attribute} #{value}' Command.find_by
#     when 'load' repo  = AttendeeRepo.load(parameters, Attendee)
#       @event_reporter = EventReporter.new(repository, @queue)
#     when 'help'
#       if @parameters == ''
#         'help'
#       else
#         PrintCommand.help_command_instructions
#       end
#     end
# #   end
#
