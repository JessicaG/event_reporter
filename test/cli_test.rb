require_relative './test_helper'
require_relative '../lib/cli'

class CLITest < Minitest::Test
  attr_reader :cli

  def test_it_loads_a_data_file
      assert cli.search_command.empty?
      cli.load('../data/sample_attendees.csv')
      refute cli.search_command.empty?
  end

  def test_it_finds_by_first_name
    cli.load('../data/sample_attendees.csv')
    cli.add(cli.search_command.find_by_first_name("Aya"))
    assert_equal 1, cli.length
    cli.each do |record|
      assert_equal "Aya", entry.first_name
    end
  end

  def test_it_finds_by_last_name
    cli.load('./test_attendees.csv')
    cli.add(cli.search_command.find_by_last_name("Fuller"))
    assert_equal 1 , cli.length
    cli.each do |record|
      assert_equal "Fuller", entry.last_name
    end
  end

  def test_it_finds_by_state
    cli.load('./test_attendees.csv')
    cli.add(cli.search_command.find_by_state("BC"))
    assert_equal 1 , cli.length
    cli.each do |record|
      assert_equal "BC", entry.state
    end
  end

  def test_it_finds_by_zipcode
    cli.load('./test_attendees.csv')
    cli.add(cli.search_command.find_by_zipcode("90210"))
    assert_equal 1 , cli.length
    cli.each do |record|
      assert_equal "90210", entry.zipcode
    end
  end

  def test_it_finds_by_city
    cli.load('./test_attendees.csv')
    cli.add(cli.search_command.find_by_city("Vancouver"))
    assert_equal 1 , cli.length
    cli.each do |record|
      assert_equal "Vancouver", entry.city
    end
  end

  def test_it_finds_multiple_records_by_first_name
    cli.load('./test_attendees.csv')
    cli.add(cli.container.find_by_first_name('Jessica'))
    assert_equal 50, cli.length
    cli.each do |jessica|
      assert_equal "Jessica", jessica.first_name
    end
  end

end
