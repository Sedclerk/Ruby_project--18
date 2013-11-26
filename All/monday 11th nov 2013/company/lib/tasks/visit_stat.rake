namespace :visit_stat do
  desc "Record a visit"
  task :visit_track => :environment do
  end
end

namespace :db do
    desc "Save and update the  database"
    task :save => :environment do
      visit_stat = ActiveRecord::Base.configurations
      ActiveRecord::Base.establish_connection(visit_stat[RAILS_ENV])
      ActiveRecord::Base.connection.save_database(ActiveRecord::Base.connection.current_database)
    end
  end

  