class Visit < ActiveRecord::Base

belongs_to :visitable, :polymorphic => true
  has_many :visit_stats

	#def self.track(obj, ip_address)
   # Visit.find_each do |visit|
  #vs = VisitStat.where(ip_address: visit.ip_address).first
 # if vs.nil?
#    vs = VisitStat.create(ip_address: visit.ip_address)
 #   vs.count!(:ip_address)
#  else
  #  vs.increment!(:num_visits)
 # end
#end


def self.track(obj, ip_address)
    visit = Visit.find_or_create_by_num_of_visits( obj.class.name)
    ### check if visit is unique
    unless VisitStat.find_by_visit_id_and_ip_address(visit.id, ip_address)
         visit.increment!(:num_of_visits)
    end
    visit.count!(:ip_address)
    visit_stat = visit.visit_stats.create(:ip_address => ip_address)
    visit.increment!(:num_of_visits)
end

