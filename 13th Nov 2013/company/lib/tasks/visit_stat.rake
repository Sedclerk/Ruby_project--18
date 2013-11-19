namespace :task do
  desc "Record a visit"
  task :record => :environment do

#Here, I'm trying to obtain a connection adapter object,
#i m calling the connection method on your ActiveRecord class or any ActiveRecord object:
#id ={1...1000}
#v = VisitStat.create(params[:num_of_visits])
#connection = visit_stats.connection
#num_of_visits = connection.insert("SELECT num_of_visits FROM visit_stats WHERE #{id}")

#end
#new_name = visit_stats.increment
#row_id = 1...1000
#row_num_of_visits = connection.update(
 # "UPDATE users SET name=#{connection.quote(new_name)}"+
  #" WHERE id=#{connection.quote(row_id)}")
  
#  connection.insert(
 # "INSERT INTO visit_stats SET num_of_visits = #{connection.quote(new_name)}, created_at='now'")
#namespace :db do
 #   desc "Save and update the  database"
 #   task :save => :environment do
   #   visit_stat = ActiveRecord::Base.configurations
    #  ActiveRecord::Base.establish_connection(visit_stat[RAILS_ENV])
     # ActiveRecord::Base.connection.save_database(ActiveRecord::Base.connection.sedy)
    #end
  #end



#@visit_stats = num_of_visits.increment
