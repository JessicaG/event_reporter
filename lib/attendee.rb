class Attendee
  def self.build(row)
    cleaner = Cleaner.new
    new(row, cleaner)
  end

  attr_reader :id,
              :regdate,
              :first_name,
              :last_name,
              :email_address,
              :home_phone,
              :street,
              :city,
              :state,
              :zipcode

  def initialize(row, cleaner)
    @id             = cleaner.id(row[:id])
    @regdate        = cleaner.regdate(row[:regdate])
    @first_name     = cleaner.first_name(row[:first_name])
    @last_name      = cleaner.last_name(row[:last_name])
    @email_address  = cleaner.email_address(row[:email_address])
    @home_phone     = cleaner.home_phone(row[:home_phone])
    @street         = cleaner.street(row[:street])
    @city           = cleaner.city(row[:city])
    @state          = cleaner.state(row[:state])
    @zipcode        = cleaner.zipcode(row[:zipcode])
  end

  
end
