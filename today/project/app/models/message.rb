class Message < ActiveRecord::Base
	has_one :visit, :as => :visitable
	validates_presence_of :name, :last, :email, :phone, :message
	validates_length_of :name, :within => 3..25
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates_format_of :phone,
      :with => /[0-9]{3}-[0-9]{3}-[0-9]{4}/,
      :message => " numbers must be in xxx-xxx-xxxx format."
end
