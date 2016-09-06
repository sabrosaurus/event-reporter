module Clean #this will be 'included' in the load bit
  def self.zipcode(zipcode)
    zipcode.to_s.rjust(5, "0")[0,5]
  end

  def self.phone(phone)
    phone = phone.chars
    phone.delete("(")
    phone.delete(")")
    phone.delete("-")
    phone.delete(".")
    phone.delete(" ")
    phone = phone.join
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
    name.strip
  end

end
