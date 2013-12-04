#require 'config/environment'

namespace :task do
  desc "Record a visit"
  task :visit => :environment do
     Visit.find_each do |visit|
       vs = Visit.where(processed: false).find_each do |visit|
       if vs.nil?
         vs = Visit.create(ip_address: visit.ip_address)
         puts ""
       else
         vs.increment!(:num_of_visits)
         vs.processed = true
         visit.update_attributes(:processed => 'normal')
         vs.save
       end
     end
  end


# to run it type this in your terminal: 
#rake task:visit and make sure you are
# on the right folder

end