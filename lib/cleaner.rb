class Cleaner

  def id(id)
    id
  end

  def regdate(regdate)
    regdate
  end

  def first_name(first_name)
    first_name
  end

  def last_name(last_name)
    last_name
  end

  def email_address(email_address)
    email_address
  end

  def home_phone(home_phone)
    home_phone = home_phone.to_s
    home_phone.gsub!(".()-,+_ ", '')
    if home_phone.length < 10
      "0000000000"
    else
      home_phone[-9..-1]
    end
  end

  def street(street)
    street
  end

  def city(city)
    city
  end

  def state(state)
    state
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
