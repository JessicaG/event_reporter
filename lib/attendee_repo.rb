require 'csv'

class AttendeeRepo
  attr_reader :csv, :records

  def initialize(filename = "./data/event_attendees.csv")
    @csv     = CSV.open(filename, headers: true, header_converters: :symbol)
    @records = []
  end

  def build_records
    csv.each { |row| @records << Attendee.build(row) }
  end
end
