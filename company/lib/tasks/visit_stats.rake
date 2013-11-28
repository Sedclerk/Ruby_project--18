#require 'config/environment'

namespace :task do
  desc "Record a visit"
  task :visit_stats => :environment do
  Visit.find_each do |visit|
  vs = VisitStat.where(ip_address: visit.ip_address).first
    if vs.nil?
      vs = VisitStat.create(ip_address: visit.ip_address)
      puts ""
    else
      vs.increment!(:num_of_visits)
    end
  end
end
end


# to run it rake task:visit_stats