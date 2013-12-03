#require 'config/environment'

namespace :task do
  desc "Record a visit"
  task :visits => :environment do
  Visit.find_each do |visit|
  vs = Visits.where(ip_address: visit.ip_address).first
    if vs.nil?
      vs = Visits.create(ip_address: visit.ip_address)
      puts ""
    else
      vs.increment!(:num_of_visits)
      vs.processed = true
        Visit.where(processed: false).find_each do |visit|
           visit.update_attributes(:processed => 'normal')
        end
      vs.save
    end
    
  end
end
end


# to run it type this in your terminal: 
#rake task:visits and make sure you are
# on the right folder