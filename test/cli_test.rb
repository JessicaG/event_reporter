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
