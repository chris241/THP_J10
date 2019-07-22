require "pry"
class User
  attr_writer :mastercard
  attr_reader :birthdate
  attr_accessor :email

  def read_mastercard
  	return @mastercard
  end
  
  def update_birthdate(birthdate_to_update)
  	@birthdate = birthdate_to_update
  end
  def update_email(email_to_update)
  	@email = email_to_update
  	
  end
  def read_email
  	return  @email
  end
  def greet
	  puts "Bonjour, monde !"
  end
  
  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end
  
  def show_itself
  	print "Voici l'instance :"
  	puts self
  end
end # fin de ma classe
julie = User.new
jean = User.new

julie.mastercard ="4242 4242 4242 4242"
julie.read_mastercard

julie.update_email("julie@julie.com")
jean.update_email ("jean@jean.com")


julie.read_email
jean.read_email

julie.show_itself
jean.show_itself

julie.say_hello_to_someone("patrick")
binding.pry
puts "end of file"