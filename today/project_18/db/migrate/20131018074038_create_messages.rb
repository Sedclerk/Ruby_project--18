class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :last
      t.string :name
      t.string :email
      t.integer :phone
      t.text :message

      t.timestamps
    end
  end
end
