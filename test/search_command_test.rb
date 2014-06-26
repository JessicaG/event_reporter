require_relative './test_helper'
require_relative '../lib/search_command'

class SearchCommandTest < Minitest::Test
  attr_reader :command

  # def setup
  #   skip
  #   filename = 'sample_attendees.csv'
  #   @command = SearchCommand.new(filename)
  # end

  def test_it_exists
    assert SearchCommand
  end

  def test_it_takes_an_argument
    skip
    assert_equal 'event_attendees.csv', command.filename
  end

  def test_it_can_load_a_file
    command = SearchCommand.new
    refute @records = [], command.load_file

  end

  def test_can_count_record_output_in_current_queue
    skip
    filename = 'sample_attendees.csv'
    command  = SearchCommand.new(filename)
    @queue   = ["one","two","three"]
    assert_equal 3, command.queue_count
  end

  def test_can_clear_the_queue
    skip
    filename = 'event_attendees.csv'
    command  = SearchCommand.new(filename)
    @queue   = ["one","two","three"]
    assert_equal [], command.queue_clear
  end

  def test_can_save_queue_to_csv
    skip
    filename = 'event_attendees.csv'
    command  = SearchCommand.new(filename)

  end

  def test_can_search_csv_by_attribute
    skip
    filename = 'event_attendees.csv'
    command  = SearchCommand.new(filename)

  end

  def test_csv_objects_have_an_id
    skip
    filename = 'event_attendees.csv'
    command  = SearchCommand.new(filename)

  end

end
