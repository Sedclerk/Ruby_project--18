namespace :task do
  desc "Record a visit"
  task :record => :environment do
require "mysql"
@db = Mysql.new 'localhost', 'Sedy', 'Sedclerk13', 'Sedy_development'
st = @db.query("INSERT INTO visit_stats(num_of_visits) VALUES (0)")

mysql_query('SELECT * FROM visit_stats WHERE ip=\'' , request.env['action_dispatch.request_id'])
mysql_fetch_array(return)
if nbre_entrees == 0 # L'IP ne se trouve pas dans la table, on va l'ajouter.
{
   mysql_query('INSERT INTO  VALUES(request_ip);
}
else 
    mysql_query('UPDATE visit_stats SET num_of_visits WHERE ip=\'' . request_ip);

# ÉTAPE 3 : on compte le nombre d'IP stockées dans la table. C'est le nombre de visiteurs connectés.
 mysql_query('SELECT * FROM visit_stats');
 mysql_fetch_array(return);
  # Ouf ! On n'a plus qu'à afficher le nombre de connectés !
  end
end
#namespace :db do
 #   desc "Save and update the  database"
 #   task :save => :environment do
   #   visit_stat = ActiveRecord::Base.configurations
    #  ActiveRecord::Base.establish_connection(visit_stat[RAILS_ENV])
     # ActiveRecord::Base.connection.save_database(ActiveRecord::Base.connection.current_database)
    #end
  #end

desc "This task is called by the Heroku scheduler add-on"
task :queue => :environment do
  puts "Updating table visit_stats"
  @message.each do |message| #or Message.all.each.send(:update)
    message.update
  end
  puts "done."
end

#@visit_stats = num_of_visits.increment