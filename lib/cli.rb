class CLI
  attr_reader :command,
              :event_reporter

  def initialize
    @command          = ""
    @queue_command    = ""
    @find_command     = ""
    @parameters       = ""
    @queue          ||= Command.new
    @event_reporter ||= EventReporter.new(@queue)
  end


  private

  def process_input(input)
    input.split
  end

  def run
    CLI.new
  end

  ##need to fill this out more, what we want it to do once we've initiated the new queue and started a new session, will go to run, then instructions?##
  def start
    input = gets.strip
    while command != 'q'
      puts "Please load a file:"
      command = ''
      Command.load_file                       if input == "l"
      PrintCommand.help_command_instructions  if input == "h"
      end
    end
  end


  def execute_queue_command
    case command
    when 'queue count' Command.queue_count
    when 'queue clear' Command.queue_clear
    when 'queue print' Command.queue_print
    when 'queue print by #{attribute}' Command.print_by
    #when 'queue save to ??' Command.save
  end

  def execute_instructions
    case command
    when 'find #{attribute} #{value}' Command.find_by
    when 'load' repo  = AttendeeRepo.load(parameters, Attendee)
      @event_reporter = EventReporter.new(repository, @queue)
    when 'help'
      if @parameters == ''
        'help'
      else
        PrintCommand.help_command_instructions
      end
    end
  end

# def load_filename
#   puts "Welcome to Event Reporter.\nLet's load your CSV file; Type your file name:"
#   csv_file = gets.strip.downcase
# end
