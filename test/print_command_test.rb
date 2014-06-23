require_relative './test_helper'
require_relative '../lib/command'

class PrintCommandTest < Minitest::Test

def test_can_load_general_help_instructions
  command = Command.new(name)
  assert_equal "Here are your options:", command.general_help
end

def test_can_print_out_the_Command_with_header_data
  skip
  command = Command.new
  Command.header_row.print
  assert_equal Command.print
end

def test_can_load_help_command_instructions
  command = Command.new
  command.command_instructions
  assert_equal "(s)ave to repo, (c)ount output, (cl)ear output (p)rint output", Command.command_instructions
end

def test_can_print_by_attribute
  skip
  command = Command.new
  Command.attribute_print
end
