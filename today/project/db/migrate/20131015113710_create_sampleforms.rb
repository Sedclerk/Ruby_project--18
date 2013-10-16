class CreateSampleforms < ActiveRecord::Migration
  def change
    create_table :sampleforms do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :phone
      t.text :content

      t.timestamps
    end
  end
end
