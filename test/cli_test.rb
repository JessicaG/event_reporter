require_relative './test_helper'
require_relative '../lib/cli'
require_relative '../lib/search_command'
require_relative '../lib/attendee_repo'
require_relative '../lib/attendee'

class CLITest < Minitest::Test
  attr_reader :cli

  def test_it_can_find_by_attribute_and_value
    a = AttendeeRepo.new(records)
    result = a.find(first_name: 'Aya').first
    assert_equal 'Aya', result.first_name
    assert_equal 'Fuller', result.last_name
  end

end
