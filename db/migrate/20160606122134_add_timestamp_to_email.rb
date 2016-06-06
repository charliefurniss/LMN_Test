class AddTimestampToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :Timestamp, :integer
  end
end
