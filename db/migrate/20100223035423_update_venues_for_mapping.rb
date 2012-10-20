class UpdateVenuesForMapping < ActiveRecord::Migration
  def self.up
    # load lat and long via geocoding
    venues= Venue.all
    venues.each do |venue|
      venue.save
    end
  end

  def self.down
  end
end
