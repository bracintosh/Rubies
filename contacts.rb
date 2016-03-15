#Create the Contact class with methods for creating, deleting and, exporting contacts to a .txt file
class Contact
  def initialize(firstname, lastname, phone_number)
    @firstname = firstname
    @lastname = lastname
    @phone_number = phone_number
  end

  attr_reader :firstname, :lastname, :phone_number

  def saveSuccess
    puts "Your contact #{firstname+" "+ lastname} has been saved successfully!"
    puts "#{firstname}'s phone number is #{phone_number}"
  end
end

#Agenda with the contacts list
def phonebook
    puts "Welcome to the Ruby Phonebook"
    puts "What would you like to do?"
    puts "1. Add a new contact."
    puts "2. Exit."

  option = gets.chomp.to_i
  puts ""

  if option == 1
    puts "You have chosen to create a new contact, please fill in the information asked below."
    puts "Firstname: "
    firstname = gets.chomp
    puts ""
    puts "Lastname: "
    lastname = gets.chomp
    puts ""
    puts "Phone number: "
    phone = gets.chomp.to_i
    puts ""
    person = Contact.new(firstname, lastname, phone)
    person.saveSuccess
  elsif option == 2
    puts "Goodbye!"
  end

end

phonebook