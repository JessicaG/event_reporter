require 'pry'
require 'terminal-table'

class SearchCommand
  attr_reader :repo, :queue, :filename, :records

  def initialize
    @records  = AttendeeRepo.new.build_records
    @queue    = []
    @filename = filename
  end

  def load_file
    @records
    puts "Records have been successfully loaded"
  end

  def queue_print
    rows = []
    @queue.each do |a|
      rows << ["#{a.id}",
              "#{a.regdate}",
              "#{a.first_name}",
              "#{a.last_name}",
              "#{a.email_address}",
              "#{a.home_phone}",
              "#{a.street}",
              "#{a.city}",
              "#{a.state}",
              "#{a.zipcode}"]
    end
    table = Terminal::Table.new :title => "Queue Results", :headings => ['ID', 'RegDate', 'First Name', 'Last Name', 'Email Address', 'Home Phone', 'Street', 'City', 'State', 'Zip Code'], :rows => rows
    puts table
  end

  def print_by(attribute)
    puts Boom!
    puts @queue.print_by
    objects.print {|object| object.send(attribute)}
  end

  # def execute(@queue, parameters[3])
  #   @queue.sort_by(parameters[3])
  # end

  def queue_count
    @queue.count
    puts "Found #{queue.count.to_s} results"
  end

  def find_by(attribute, value)
    @queue = records.select do |object|
      object.send(attribute).upcase == value.upcase
    end
  end

  def queue_clear
    @queue.clear
    puts "Cleared your queue"
  end


  def queue_save(filename)
    @queue.save_to(filename)
  end


end
