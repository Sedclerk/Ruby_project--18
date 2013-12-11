class AddProcessedToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :processed, :boolean, :default=>0
  end
end
