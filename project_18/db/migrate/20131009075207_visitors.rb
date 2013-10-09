class Visitors < ActiveRecord::Migration
  def change
  	create_table :visitors do |t|
      t.string :name, :limit => 60
      t.text :description
      t.date :date
 
      t.timestamps
    end
  end
end
