class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :Address
      t.text :EmailType
      t.text :Event
      t.integer :Timestamp

      t.timestamps null: false
    end
  end
end
