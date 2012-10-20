class CreateVenueTypeDetails < ActiveRecord::Migration
  def self.up
    create_table :venue_type_details do |t|
      t.string :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :venue_type_details
  end
end
