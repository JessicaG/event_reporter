require_relative './test_helper'
require_relative '../lib/command'

class CommandTest < Minitest::Test

  def test_it_exists
    assert Command
  end

  def test_it_takes_an_argument
    filename = 'event_attendees.csv'
    repo = Command.new(filename)
    assert_equal 'event_attendees.csv', repo.filename
  end

  def test_can_load_general_help_instructions
    command = Command.new(name)
    assert_equal "Here are your options:", command.general_help
  end

  def test_can_load_help_command_instructions
    skip
    command = Command.new
    Command.command_instructions
    assert_equal "(s)ave to que, (c)ount output, (cl)ear output (p)rint output", Command.command_instructions
  end

  def test_can_count_record_output_in_current_command
    skip
    command = Command.new
    Command.count_record_output
    assert_equal 1, Command.id
  end

  def test_can_clear_the_command?
    skip
    command = Command.new
    Command.clear
    assert true
  end

  def test_can_print_out_the_Command_with_header_data
    skip
    command = Command.new
    Command.header_row.print
    assert_equal Command.print
  end

  def test_can_print_by_attribute
    skip
    command = Command.new
    Command.attribute_print
  end

  def test_can_save_command_to_csv
    skip
    command = Command.new
  end

  def test_can_search_csv_by_attribute
    skip
    command = Command.new
  end

  def test_csv_objects_have_an_id
    skip
    command = Command.new
  end

end
