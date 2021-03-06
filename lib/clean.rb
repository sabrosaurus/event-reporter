module Clean
  def self.zipcode(zipcode)
    zipcode.to_s.rjust(5, "0")[0,5]
  end

  def self.phone(phone)
    phone = phone.to_s.gsub(/[^0-9]/, '')
    if phone.length == 11 
      phone = phone[1..-1]
    elsif phone.length > 11
      phone = "0000000000"
    elsif phone.length < 10
      phone = "0000000000"
    end
    return phone
  end

  def self.name(name)
    name.to_s.strip
  end

  def self.thing(thing)
    thing.to_s
  end
end
