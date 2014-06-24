require_relative './test_helper'
require_relative '../lib/cli'

class CLITest < Minitest::Test
  attr_reader :cli

  # def setup
  #   repository = EntryRepository.in("./test/fixtures")
  #   phone_book = PhoneBook.new(repository)
  #   @cli ||= CLI.new(phone_book)
  # end

  def test_it_exists
    assert cli
  end

  def test_it_has_a_command
#command will store current instrucitons
  skip
    assert cli.command
  end

  def test_it_has_parameters
#parameters will be args for that command
  skip
    assert cli.parameters
  end

  def test_it_has_a_handler
#handler holds functionality we want to access
  end
end


###ask jeff why you need the first two lines repeated through the code for tests. why can't that be in a initalizer for tests?
##do we need a test and method for each aspect or is the object and attribute okay?##
