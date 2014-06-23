require 'csv'

class Handler
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def format
    contents = CSV.open @filename, headers: true, header_converters: :symbol
    contents.each do |row|
    name = row[:first_name]
    end
  end

  def clean_first_name(first_Name)
    first_Name.downcase.capitalize
  end

  def clean_last_name(last_Name)
    last_Name.downcase.capitalize
  end

  #refactor?#
  def clean_home_phone(homephone)
    homephone.to_s.gsub(".()-,+_ ")
    if homephone.length < 10
      "0000000000"
    elsif homephone.length >= 11
      homephone[-9..-1]
    else
      homephone
    end
  end

  #is there a gem for this?#
  def clean_email_address(Email_Address)
    email_address.include!(@ .)
  end

  def clean_state(State)
    state.upcase
  end

  def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5,"0")[0..4]
  end

end
