class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.string :type
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.text :description
      t.string :discount
      t.text :bike_tips
      t.string :restrictions

      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
