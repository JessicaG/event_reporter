require_relative 'print_command'
require_relative 'command'

class CLI
  attr_accessor :command


  def initialize
    @command          = ""
    # @queue_command    = ""
    # @find_command     = ""
    # @parameters       = ""
    # @queue          ||= Command.new
    # @event_reporter = EventReporter.new(@queue)
  end

  def process_input(input)
    input.split
  end

  #how to clear/push your prompt to clear when program is started#
  def run
    puts "Welcome to Event Reporter, the easiest way to look at your CSV file!\nStart by (load)ing your file, go to (help) or (quit) to leave."
    parts      = gets.strip.split
    command    = parts[0]
    parameters = parts[1..-1].join
    until command == 'quit'
      case command
      when "load"
        Command.new.load_file
      when "help"
        PrintCommand.new.general_help
      when "queue print"
        PrintCommand.new.queue_print
      when "queue count"
        Command.new.queue_count
      when "find by"
        Command.new.find_by(parameters)
      end
      print "\nEnter your command: "
      command = gets.strip

      # Command.new.queue_count
      # next
    end
    puts "Good Bye.\n"
  end
end
#
#
  # def execute_queue_command
  #   case command
  #   when 'queue count' Command.queue_count
  #   when 'queue clear' Command.queue_clear
  #   when 'queue print' Command.queue_print
  #   when 'queue print by #{attribute}' Command.print_by
  #   #when 'queue save to ?' Command.save
  # end
#
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
#   end
#
