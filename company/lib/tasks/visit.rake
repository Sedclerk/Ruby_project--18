#require 'config/environment'
namespace :task do
  desc "Record a visit"
  task :visit => :environment do
     Visit.find_each do |visit|
       vs = Visit.where(processed:false).find_each do |visit|
       if vs.nil?
         vs = Visit.create(ip_address: visit.ip_address)
         vs = Visit.update_attributes(:processed => 'normal')
         puts 
         else
          vs.increment!(:num_of_visits)
          vs.processed = true
          vs.save
       end
     end
     end
  end
end