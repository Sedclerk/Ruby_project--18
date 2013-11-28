class VisitStat < ActiveRecord::Base
	belongs_to :visit
	attr_accessor :num_of_visits
end
