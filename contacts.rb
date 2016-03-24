class Contact
  attr_reader :firstname, :lastname, :phone_number

  def initialize(firstname, lastname, phone_number)
    @firstname = firstname
    @lastname = lastname
    @phone_number = phone_number
  end

  def saveSuccess
    puts "Your contact #{firstname+" "+ lastname} has been saved successfully!"
    puts "#{firstname}'s phone number is #{phone_number}\n "
  end
end

def list_contacts(contacts)
    if contacts.empty?
      puts "You don't have any contacts yet. \n "
    else
      contacts.each_with_index do |c, i|
        puts "#{i+1}- #{c.firstname} #{c.lastname} \n   #{c.phone_number} \n "
      end
    end
end

#Agenda with the contacts list
def phonebook
  contacts = []
  option = 0

  while option != 3

    puts "Welcome to the Ruby Phonebook \nWhat would you like to do?"
    puts "1. Add a new contact"
    puts "2. List all my contacts"
    puts "3. Exit"

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
      contact = Contact.new(firstname, lastname, phone)
      contact.saveSuccess
      contacts << contact
    elsif option == 2
      list_contacts(contacts)
    end
  end
    puts "Goodbye!"
end

phonebook