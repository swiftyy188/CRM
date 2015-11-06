class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note

  @@contacts = []
  @@id = 1

  def initialize(first_name, last_name, email, note)
    @id = @@id
    @@id += 1
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end
  def self.find(contact_id)
    @@contacts.find { |contact|contact.id == contact_id}
  end
  
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
  end

  def remove
    @@contacts.delete_if { |contact| contact.id == self.id }
  end
     
  def self.all
    @@contacts
  end
end