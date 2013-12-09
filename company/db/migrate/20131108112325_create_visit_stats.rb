class CreateVisitStats < ActiveRecord::Migration
  def self.up
    create_table :visit_stats do |t|
        
         t.string :ip_address, :limit => 15
         t.integer :num_of_visits
      t.timestamps
    end
    
    add_index :visit_stats, :ip_address
    add_index :visit_stats, :num_of_visits
  end

  def self.down
  
    remove_index :visit_stats, :ip_address
    drop_table :visit_stats
  end
end
