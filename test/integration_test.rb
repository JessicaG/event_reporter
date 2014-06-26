require_relative './test_helper'
require_relative '../lib/search_command'
require_relative '../lib/_command'


class IntegrationTest < Minitest::Test
  attr_reader :attendee_repo



  def test_can_search_case_insensitive_data
    Cleaner.new
  end

end
