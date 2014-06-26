require_relative './test_helper'
require_relative '../lib/Command'

class CleanerTest < Minitest::Test

  def test_it_can_load_a_new_file
    Cleaner.new
  end



  def test_can_normalize_zip_codes
    numbers = [234, 10, 9119, 38881]
    zip_codes = []

    assert_equal ["00234", "00010", "09119", "38881"], cleaner
  end

  def test_can_normalize_phone_numbers
    number = 123.456.7890
    cleaner = Cleaner.new
    assert_equal "1234567890", home_phone(123.456.7890)
  end

  def test_it_takes_a_command_filename
    filename = "event_attendee.csv"
    command = Cleaner.new(filename)
    assert_equal "people.csv", command.load_file(filename)
  end

end
