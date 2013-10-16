class Message < ActiveRecord::Base
	
	has_one :visit, :as => :visitable

	validates_presence_of :first_name, :last_name, :email, :phone, :content
	validates_length_of :first_name, :within => 3..25
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates_format_of :phone,
      :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
      :message => "- Phone numbers must be in xxx-xxx-xxxx format."
  def self.find_message
    find(:all, :order => "id")
  end

def self.track(obj, ip_address)
    visit = Visit.find_or_create_by_visitable_id_and_visitable_type(obj.id, obj.class.name)
    
    unless VisitDetail.find_by_visit_id_and_ip_address(visit.id, ip_address)
         visit.increment!(:unique_visits)
    end
    visit.increment!(:total_visits)
    visit_detail = visit.visit_details.create(:ip_address => ip_address)
  end



end