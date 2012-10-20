class HomeController < ApplicationController
  def welcome
    conditions = []
    @venues = Venue.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 5, :conditions => conditions
  end
  def detail
    @venue = Venue.find params[:id]
  end
  def map

    @map = GMap.new("map_div")
    @map.control_init(:large_map => true,:map_type => true)
    @map.center_zoom_init([35.12313,-110.567],12)  
    @map.overlay_init GMarker.new([35.12878, -110.578],:title => "Hello!")
    @map.record_init @map.add_overlay(GMarker.new([35.12878, -110.578],:title => "Hello!"))


    @venues=  Venue.all
    venue = @venues.first
    @map = GMap.new("map_div")
    @map.control_init(:large_map => true,:map_type => true)
    @map.center_zoom_init([venue.lat,venue.lng],10)
    # #{venue.address1} #{venue.city}, #{venue.state},#{venue.zip}
    @map.overlay_init GMarker.new([venue.lat,venue.lng],:title => venue.name)
    @venues.each do |venue|
      hh = render_to_string(:partial => 'venue_detail_for_popup', :locals => {:venue => venue})
      marker = GMarker.new([venue.lat,venue.lng],:title => venue.name, :url => venue.url,:info_window => hh)
      @map.record_init @map.add_overlay(marker)
      marker.addListener(marker, "click", "alert('foo')")
    end
  end
end
