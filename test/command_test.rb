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
    @queue   = ["one","two","three"]
    assert_equal 3, command.queue_count
  end

  def test_can_clear_the_queue
    filename = 'event_attendees.csv'
    command  = Command.new(filename)
    @queue   = ["one","two","three"]
    assert_equal [], command.queue_clear
  end

  def test_can_save_queue_to_csv
    filename = 'event_attendees.csv'
    command  = Command.new(filename)

  end

  def test_can_search_csv_by_attribute
    skip
    filename = 'event_attendees.csv'
    command  = Command.new(filename)

  end

  def test_csv_objects_have_an_id
    skip
    filename = 'event_attendees.csv'
    command  = Command.new(filename)

  end

end
