class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
         t.integer :visitable_id
         t.string :ip_address, :limit => 15
         t.string :visitable_type, :limit => 30
         t.integer :total_visits
         t.integer :unique_visits
      t.timestamps
    end
    add_index :visits, :visitable_id
    add_index :visits, :visitable_type
    add_index :visits, :ip_address
  end

  def self.down
    remove_index :visits, :visitable_id
    remove_index :visits, :visitable_type
    remove_index :visits, :ip_address
    drop_table :visits
  end

end
