class RemoveTimestampFromEmail < ActiveRecord::Migration
  def change
  	remove_column :emails, :Timestamp, :datetime
  end
end
