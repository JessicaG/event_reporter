require 'terminal-table'
require 'csv'

class SearchCommand
  attr_reader :repo, :queue, :filename, :records

  def initialize
    @records  = AttendeeRepo.new.build_records
    @queue    = []
    @filename = filename
  end

  def load_file
    puts "Type (load <filename>) for your own file or type (load) to load event_attendees.csv.
          Make sure your file is in the data repository."
      parts = gets.strip.downcase.split
      if parts [0] == "load"
        if parts[1] == nil
          @records
        else
          @records = []
          @records = AttendeeRepo.new("data/#{parts[1]}").build_records
        end
        puts "\nFile has been loaded successfully.".colorize(:green)
      else
        puts "Invalid command."
      end
  end

    # elsif parts[2].exists?

    # elsif loadfile != include? (".csv")
    #   puts "Invalid file format."


  def queue_print
    rows = []
    @queue.each do |a|
      rows << ["#{a.id}",
              "#{a.regdate}",
              "#{a.first_name}",
              "#{a.last_name}",
              "#{a.email_address}",
              "#{a.homephone}",
              "#{a.street}",
              "#{a.city}",
              "#{a.state}",
              "#{a.zipcode}"]
    end
    table = Terminal::Table.new :title => "Queue Results", :headings => ['ID', 'RegDate', 'First Name', 'Last Name', 'Email Address', 'Home Phone', 'Street', 'City', 'State', 'Zip Code'], :rows => rows
    puts table
  end

  def queue_print_by_attribute(attribute)
    queue.sort_by! do |record|
      record.send(attribute)
    end
    queue_print
  end

  def queue_count
    @queue.count
    puts "There are #{queue.count.to_s} records currently in your queue."
  end

  def find_by(attribute, value)
    @queue = records.select do |object|
      object.send(attribute).to_s.upcase == value.to_s.upcase
    end
    puts "\n#{queue.count.to_s} records found. Type (queue print) to view them."
  end

  def queue_clear
    @queue.clear
    puts "\nCleared. There are no records in your queue.".colorize(:green)
  end

  def queue_save_by(filename)
    CSV.open(create_filename(filename), 'w') do |csv|
      csv << ['ID', 'RegDate', 'First Name', 'Last Name', 'Email Address', 'Home Phone', 'Street', 'City', 'State', 'Zip Code']
      @queue.each do |a|
      csv << ["#{a.id}",
              "#{a.regdate}",
              "#{a.first_name}",
              "#{a.last_name}",
              "#{a.email_address}",
              "#{a.homephone}",
              "#{a.street}",
              "#{a.city}",
              "#{a.state}",
              "#{a.zipcode}"]
      end
    end
  end

  private

  def create_filename(filename)
    "output/#{filename}.csv"
  end
end
