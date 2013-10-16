class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
        
   
    t.column :first_name, :string, :limit => 25, :default => "", :null => false
    t.column :last_name, :string, :limit => 25, :default => "", :null => false
    t.column :email, :string, :limit => 50, :default => "", :null => false
    t.column :phone, :integer, :limit => 15, :default => "", :null => false
    t.column :content, :text,                :default => "", :null => false

      t.timestamps
    end
  end
end
