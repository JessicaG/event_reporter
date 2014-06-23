class Cleaner
  def first_name(first_name)
    first_name.downcase.capitalize
  end

  def last_name(last_name)
    last_name.downcase.capitalize
  end

  def home_phone(phone)
    homephone.to_s.gsub(".()-,+_ ")
    if homephone.length < 10
      "0000000000"
    else
      homephone[-9..-1]
    end
  end

  def state(state)
    state.upcase
  end

  def zipcode(zipcode)
    zipcode.to_s.rjust(5,"0")[0..4]
  end
end

##extras if time permits##

  #is there a gem for this?#
  # def email_address(Email_Address)
  #   email_address.include!(@ .)
  # end
