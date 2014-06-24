require 'pry'
require_relative './attendee_repo'

class Command
  attr_reader :repo, :queue, :filename

  def initialize
    @records  = AttendeeRepo.new.build_records
    @queue    = []
    @filename = filename
  end

  def load_file
    # binding.pry
    @records
  end

  def queue_count
    @records.count
  end

  # # def load_filename
  # #   puts "Welcome to Event Reporter.\nLet's load your CSV file; Type your file name:"
  # #   csv_file = gets.strip.downcase
  # # end

  def find_by(attribute, value)
    objects.select {|object| object.send(attribute) == value}
  end

  def find_by_first_name(value)
    find_by(:name, value)
  end

  def find_by_last_name(value)
    find_by(:name, value)
  end

  ###phone number, zip code, state, street, email, regdate###




  def queue_clear
    @queue.clear
  end

  def queue_save(filename)
    @queue.save_to(filename)
  end

end
