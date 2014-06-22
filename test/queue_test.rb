require_relative './test_helper'
require_relative '../lib/queue'

class QueueTest < Minitest::Test

  def filename
    @filename ||= File.absolute_path("../event_attendees_test.csv", __FILE__)
  end

  def queue
    Queue.read(filename)
  end

  def test_it_can_read_files
    
  end

  # def test_can_load_file?
  #   queue = Queue.new upload?
  #   assert true
  # end

#   class DBTest < Minitest::Test
#  class Thing
#    attr_reader :id, :name
#    def initialize(data)
#      @id = data[:id]
#      @name = data[:name]
#    end
#  end
#
#  def db
#    DB.read(filename, Thing)
#  end
#
#  def test_find_by_name
#    things = db.find_by(:name, "tire")
#    assert_equal 2, things.size
#    assert_equal ["2", "3"], things.map(&:id)
#  end
# end



  def test_can_load_general_help_instructions
    skip
    queue = Queue.new
    Queue.general_help
    assert_equal "Help instructions", queue.general_help
  end

  def test_can_load_help_command_instructions
    skip
    queue = Queue.new
    Queue.command_instructions
    assert_equal "(s)ave to que, (c)ount output, (cl)ear output (p)rint output", queue.command_instructions

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
    assert true

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
