class Venue < ActiveRecord::Base
  acts_as_mappable
  before_save :geocode_address

  private

  def geocode_address
    geo = Geokit::Geocoders::MultiGeocoder.geocode("#{self.address1} #{self.city}, #{self.state} #{self.zip}")
    if geo.success
      self.lat, self.lng = geo.lat,geo.lng
    else
      errors.add(:address, "Could not Geocode address")
    end
  end
end
