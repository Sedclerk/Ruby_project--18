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
      vs.processed = true
      vs.save
    end
  end
end
end


# to run it type this in your terminal: 
#rake task:visit_stats and make sure you are
# on the right folder