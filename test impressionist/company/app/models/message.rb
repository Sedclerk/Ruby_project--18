class Message < ActiveRecord::Base
has_many :impressions, :as=>:impressionable
	validates_presence_of :name, :last_name, :email, :phone, :message
	validates_length_of :name, :within => 3..25
	validates_length_of :last_name, :within => 3..25
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates_format_of :phone,
      :with => /\d[0-9]\)*\z/,
      :message => " Please, only 9 numbers. cool."

  def impression_count
    impressions.size
  end

  def unique_impression_count
    impressions.group(:ip_address).size #UNTESTED: might not be correct syntax
  end
end
end