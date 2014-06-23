class CLI
  attr_reader :command,
              :event_reporter

  def initialize
    @command = ""
  end

  def self.run
    CLI.new.start
  end

  private

  def process_input(input)
    input.split
  end

  def assign_queue_instructions(parts)
    case parts[1]
    when 'count'
      assign_queue_command(parts, 1)
      assign_queue_parameters(parts, 1)
    when 'clear'
      assign_queue_command(parts, 1)
      assign_queue_parameters(parts, 1)

    when 'print'
      assign_queue_command(parts, 1)
      assign_queue_parameters(parts, 1)
    end

    case parts[1..2].join(" ")
    when 'print by'
      assign_queue_command(parts, 2)
      assign_queue_parameters(parts, 2)

    when 'save to'
      assign_queue_command(parts, 2)
      assign_queue_parameters(parts, 2)

    end
  end

  def execute_command
    case command
  end



# def load_filename
#   puts "Welcome to Event Reporter.\nLet's load your CSV file; Type your file name:"
#   csv_file = gets.strip.downcase
# end
