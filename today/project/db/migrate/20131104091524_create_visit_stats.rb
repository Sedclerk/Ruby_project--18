class CreateVisitStats < ActiveRecord::Migration
  def self.up
    create_table :visit_stats do |t|
         t.integer :visit_id
         t.string :ip_address, :limit => 15
         t.integer :num_of_visits
      t.timestamps
    end
    add_index :visit_stats, :visit_id
    add_index :visit_stats, :ip_address
  end

  def self.down
    remove_index :visit_stats, :visit_id
    remove_index :visit_stats, :ip_address
    drop_table :visit_stats
  end
end