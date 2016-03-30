#This program allows the user to save contacts and list them
#TODO: Delete and update contacts

class Contact
  attr_reader :first_name, :last_name, :phone_number

  def initialize(first_name, last_name, phone_number)
    @first_name = first_name
    @last_name = last_name
    @phone_number = phone_number
  end

  def save_success
    puts "Your contact #{first_name+" "+ last_name} has been saved successfully!"
    puts "#{first_name}'s phone number is #{phone_number}\n "
  end
end

def list_contacts(contacts)
    if contacts.empty?
      puts "You don't have any contacts yet. \n "
    else
      contacts.each_with_index do |contact, i|
        puts "#{i+1}- #{contact.first_name} #{contact.last_name} \n   #{contact.phone_number} \n "
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
      puts "first_name: "
      first_name = gets.chomp
      puts ""
      puts "last_name: "
      last_name = gets.chomp
      puts ""
      puts "Phone number: "
      phone = gets.chomp.to_i
      puts ""
      contact = Contact.new(first_name, last_name, phone)
      contact.save_success
      contacts << contact
    elsif option == 2
      list_contacts(contacts)
    end
  end
    puts "Goodbye!"
end

phonebook