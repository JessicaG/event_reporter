require_relative './test_helper'
require_relative '../lib/Command'

class CommandTest < Minitest::Test

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
    Command = Command.new upload?
    assert_equal :true

  def filename
    @filename ||= File.absolute_path("../data/event_attendees_test.csv", __FILE__)
  end

  def command
    Command.read(filename)
  end

  def test_it_can_read_files

  end

  # def test_can_load_file?
  #   Command = Command.new upload?
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
    Command = Command.new
    Command.general_help
    assert_equal "Help instructions", Command.general_help
  end

  def test_can_load_help_command_instructions
    skip
    Command = Command.new
    Command.command_instructions
    assert_equal "(s)ave to que, (c)ount output, (cl)ear output (p)rint output", Command.command_instructions

  end

  def test_can_count_record_output_in_current_Command
    skip
    Command = Command.new
    Command.count_record_output
    assert_equal 1, Command.id
  end

  def test_can_clear_the_Command?
    skip
    Command = Command.new
    Command.clear
    assert true

  end

  def test_can_print_out_the_Command_with_header_data
    skip
    Command = Command.new
    Command.header_row.print
    assert_equal Command.print

  end

  def test_can_print_by_attribute
    skip
    Command = Command.new
    Command.attribute_print
<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
  .

>>>>>>> ca8752e99869cb0901a6db2e366ccf25bdf02f41

>>>>>>> 08649a8956bb8d870b0c853d5593fda403dd29a8
  end

  def test_can_save_Command_to_csv
    skip
    Command = Command.new

  end

  def test_can_search_csv_by_attribute
    skip
    Command = Command.new

  end

  def test_csv_objects_have_an_id
    skip
    Command = Command.new
  end

end
