class AddVenueTypeAndAlcoholToVenue < ActiveRecord::Migration
  def self.up
    add_column :venues, :alcohol, :boolean
    add_column :venues, :venue_type_detail, :string
  end

  def self.down
    remove_column :venues, :venue_type_detail
    remove_column :venues, :alcohol
  end
end
