class AddLatAndLngToVenue < ActiveRecord::Migration
  def self.up
    add_column :venues, :lat, :decimal
    add_column :venues, :lng, :decimal
  end

  def self.down
    remove_column :venues, :lng
    remove_column :venues, :lat
  end
end
