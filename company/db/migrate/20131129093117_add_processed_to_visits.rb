class AddProcessedToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :processed, :boolean
    
  end


end
