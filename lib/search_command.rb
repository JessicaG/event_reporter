require 'pry'

class SearchCommand
  attr_reader :repo, :queue, :filename, :records

  def initialize
    @records  = AttendeeRepo.new.build_records
    @queue    = []
    @filename = filename
  end

  #add in note for user that file is successfully loaded#
  def load_file
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

    @queue = records.select do |object|
      object.send(attribute).upcase == value.upcase
    end
    puts "Queue is:"
    puts @queue.to_s
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
