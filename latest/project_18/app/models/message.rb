class Message < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email, :phone, :content
	validates_length_of :first_name, :within => 3..25
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates_format_of :phone,
      :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
      :message => "- Phone numbers must be in xxx-xxx-xxxx format."

end