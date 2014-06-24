class CLI
  attr_reader :command,
              :event_reporter

  def initialize
    @command = ""
  end


  private

  def process_input(input)
    input.split
  end

  def run
    input = ""
    until input == "q"
      print "(l)oad file, (h)elp, or (q)uit?: "
      input = gets.strip

       file                               if input == "l"
      PrintCommand.help_command_instructions  if input == "h"

  end

  def execute_command
    case command
    when 'queue count' Command.queue_count
    when 'find #{attribute} #{value}' Command.find_by
    when 'queue clear' Command.queue_clear
    when 'queue print' Command.queue_print
    when 'queue print by #{attribute}' Command.print_by
    #when 'queue save to ??' Command.save

  end


  # def assign_queue_instructions(parts)
  #   case parts[1]
  #   when 'count'
  #     assign_queue_command(parts, 1)
  #     assign_queue_parameters(parts, 1)
  #   when 'clear'
  #     assign_queue_command(parts, 1)
  #     assign_queue_parameters(parts, 1)
  #
  #   when 'print'
  #     assign_queue_command(parts, 1)
  #     assign_queue_parameters(parts, 1)
  #   end
  #
  #   case parts[1..2].join(" ")
  #   when 'print by'
  #     assign_queue_command(parts, 2)
  #     assign_queue_parameters(parts, 2)
  #
  #   when 'save to'
  #     assign_queue_command(parts, 2)
  #     assign_queue_parameters(parts, 2)
  #
  #   end
  # end


# def load_filename
#   puts "Welcome to Event Reporter.\nLet's load your CSV file; Type your file name:"
#   csv_file = gets.strip.downcase
# end
