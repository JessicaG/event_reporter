require_relative './test_helper'
require_relative '../lib/queue'

class QueueTest < Minitest::Test

  def test_it_exists
    assert Handler
  end

  def test_it_takes_an_argument
    filename = 'event_attendees.csv'
    repo = Handler.new(filename)
    assert_equal 'event_attendees.csv', repo.filename
  end


  def test_can_load_file?
    skip
    queue = Queue.new upload?
    assert_equal :true
  end

  def test_can_load_general_help_instructions
    skip
    queue = Queue.new
    Queue.general_help
    assert_equal "Help instructions" queue.general_help
  end

  def test_can_load_help_command_instructions
    skip
    queue = Queue.new
    Queue.command_instructions
    assert_equal "(s)ave to que, (c)ount output, (cl)ear output (p)rint output" queue.command_instructions

  end

  def test_can_count_record_output_in_current_queue
    skip
    queue = Queue.new
    Queue.count_record_output
    assert_equal 1, queue.id
  end

  def test_can_clear_the_queue?
    skip
    queue = Queue.new
    Queue.clear
    assert_equal :true

  end

  def test_can_print_out_the_queue_with_header_data
    skip
    queue = Queue.new
    Queue.header_row.print
    assert_equal queue.print

  end

  def test_can_print_by_attribute
    skip
    queue = Queue.new
    Queue.attribute_print
  end

  def test_can_save_queue_to_csv
    skip
    queue = Queue.new

  end

  def test_can_search_csv_by_attribute
    skip
    queue = Queue.new

  end

  def test_csv_objects_have_an_id
    skip
    queue = Queue.new
  end

end
