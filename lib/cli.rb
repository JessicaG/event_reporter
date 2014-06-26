require_relative 'search_command'
require 'colorize'
require_relative 'output_printer'

class CLI
  include OutputPrinter

  attr_reader :search_command

  def initialize
    @search_command = SearchCommand.new
  end

  def process_input(input)
    input.split
  end

  def run
    system 'clear'
    OutputPrinter.intro_message
    command = ''
    until command == 'quit'
      OutputPrinter.initial_prompt
      parts      = gets.strip.split
      command    = parts[0]
      parameters = parts[1..-1]
      case command
        when "load"
          search_command.load_file
          # OutputPrinter.records_loaded_message
        when "help"
          execute_help_command(parameters)
        when "queue"
          execute_queue_command(parameters)
        when "find"
          search_command.find_by(parts[1], parts[2]
        when "quit"
          exit
        else
          puts "That's not an option.  Try again or type (help)."
          # OutputPrinter.queue_results_message_count
        else
          # OutputPrinter.invalid_command_message
      end
    end
    OutputPrinter.outro_message
  end

  def execute_help_command(sub_command)
    case sub_command[0]
    when 'queue'
      # find
      # count
      # print
      # print by
      # save to
      # clear
    end
  end


  def execute_queue_command(sub_command)
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
