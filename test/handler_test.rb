require_relative './test_helper'
require_relative '../lib/queue'

class HandlerTest < Minitest::Test

  def test_it_can_load_a_new_file
    Handler.new
  end

  def test_can_search_case_insensitive_data
    skip
  end

  def test_can_differentiate_between_first_and_last_name
    skip
  end

  def test_normalize_zip_codes
    skip
    numbers = [234, 10, 9119, 38881]
    zip_codes = []
    numbers.each do |number|
      zip_codes << "%05d" % (number)
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

end
