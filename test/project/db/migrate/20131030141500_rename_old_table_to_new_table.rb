class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
  	
  	rename_table :visit_details, :visits
  	rename_table :visits, :visit_stats

  end
end
