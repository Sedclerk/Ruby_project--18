namespace :task do
  desc "Record a visit"
  task :record => :environment do
   vs = VisitStat.new
   vs.ip_address = '127.0.0.1'
   vs.save
  end