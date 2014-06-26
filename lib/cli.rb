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
        when "load" then search_command.load_file
        when "help" then execute_help_command(parameters)
        when "queue" then execute_queue_command(parameters)
        when "find" then search_command.find_by(parts[1], parts[2..-1].join(" "))
      else
        puts OutputPrinter.invalid_command_message
      end
    end
    OutputPrinter.outro_message
  end

  def execute_help_command(sub_command)
    if sub_command.length < 1 then OutputPrinter.help_options_message
      case sub_command[0]
        when 'queue'
          case sub_command[1]
            when 'count' then OutputPrinter.help_queue_count_message
            when 'clear' then OutputPrinter.help_queue_clear_message
            when 'print' then OutputPrinter.help_queue_print_message
            when 'save' then OutputPrinter.help_queue_save_to_message
          end
        when 'find' then OutputPrinter.help_find_message
      end
    end
  end


  def execute_queue_command(sub_command)
    case sub_command[0]
      when 'count' then count = search_command.queue_count
      when 'clear' then search_command.queue_clear
      when 'print'
        case sub_command[1]
          when 'by' then search_command.queue_print_by_attribute(sub_command[2])
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
