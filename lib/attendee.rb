class Attendee
  def self.build(row)
    cleaner = Cleaner.new
    new(row, cleaner)
  end

  attr_reader :id,
              :registration,
              :first_name,
              :last_name,
              :email,
              :home_phone,
              :street,
              :city,
              :state,
              :zipcode

  def initialize(row, cleaner)
    @id           = row[:id]
    @registration = row[:regdate]
    @first_name   = row[:first_name]
    @last_name    = row[:last_name]
    @email        = row[:email_address]
    @home_phone   = cleaner.home_phone(row[:home_phone])
    @street       = row[:street]
    @city         = row[:city]
    @state        = row[:state]
    @zipcode      = cleaner.zipcode(row[:zipcode])
  end
end
