class RenameTypeInVenue < ActiveRecord::Migration
  def self.up
    rename_column :venues, :type, :venue_type
  end

  def self.down
    rename_column :venues, :venue_type, :type
  end
end
