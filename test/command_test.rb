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

  def test_can_count_record_output_in_current_queue
    filename = 'event_attendees.csv'
    command  = Command.new(filename)
    assert_equal 2, command.queue_count
  end

  def test_can_clear_the_command?
    skip
    command = Command.new
    Command.clear
    assert true
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
