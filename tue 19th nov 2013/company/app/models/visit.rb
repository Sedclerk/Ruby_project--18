class Visit < ActiveRecord::Base

belongs_to :visitable, :polymorphic => true
  has_many :visit_stats

	#def self.track(obj, ip_address)
  # visit = Visit.find_or_create_by_num_of_visits_and_ip_address(obj.id, obj.class.name)
   # 
    #unless VisitStat.find_by_visit_id_and_ip_address(visit.id, ip_address)
     #    visit_stat.increment!(:num_of_visits)
    #end
    :num_of_visits = 0
    visit.increment!(:num_of_visits)
    visit_stat = visit.visit_stats.create(:ip_address => ip_address)
  
  end
end
