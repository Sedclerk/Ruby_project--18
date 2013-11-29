class AddProcessedToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :processed, :string
    Visit.all.each do |visit|
      visit.update_attributes(:processed => 'normal')
    end
  end


end
