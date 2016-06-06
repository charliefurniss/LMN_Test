class RemoveTimestampFromEmail < ActiveRecord::Migration
  def change
    remove_column :emails, :Timestamp, :timestamps
  end
end
