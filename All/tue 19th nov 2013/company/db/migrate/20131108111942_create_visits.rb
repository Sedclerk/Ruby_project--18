class CreateVisits < ActiveRecord::Migration
 def self.up
    create_table :visits do |t|
    t.string :ip_address, :limit => 15
      t.timestamps
    end
    add_index :visits, :ip_address
  end

  def self.down
    remove_index :visits, :ip_address
  end
end
