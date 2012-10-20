class VenueTypeDetailsController < ApplicationController
  
  before_filter :admin_required
  
  # GET /venue_type_details
  # GET /venue_type_details.xml
  def index
    @venue_type_details = VenueTypeDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @venue_type_details }
    end
  end

  # GET /venue_type_details/1
  # GET /venue_type_details/1.xml
  def show
    @venue_type_detail = VenueTypeDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @venue_type_detail }
    end
  end

  # GET /venue_type_details/new
  # GET /venue_type_details/new.xml
  def new
    @venue_type_detail = VenueTypeDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @venue_type_detail }
    end
  end

  # GET /venue_type_details/1/edit
  def edit
    @venue_type_detail = VenueTypeDetail.find(params[:id])
  end

  # POST /venue_type_details
  # POST /venue_type_details.xml
  def create
    @venue_type_detail = VenueTypeDetail.new(params[:venue_type_detail])

    respond_to do |format|
      if @venue_type_detail.save
        flash[:notice] = 'VenueTypeDetail was successfully created.'
        format.html { redirect_to(@venue_type_detail) }
        format.xml  { render :xml => @venue_type_detail, :status => :created, :location => @venue_type_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @venue_type_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /venue_type_details/1
  # PUT /venue_type_details/1.xml
  def update
    @venue_type_detail = VenueTypeDetail.find(params[:id])

    respond_to do |format|
      if @venue_type_detail.update_attributes(params[:venue_type_detail])
        flash[:notice] = 'VenueTypeDetail was successfully updated.'
        format.html { redirect_to(@venue_type_detail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @venue_type_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_type_details/1
  # DELETE /venue_type_details/1.xml
  def destroy
    @venue_type_detail = VenueTypeDetail.find(params[:id])
    @venue_type_detail.destroy

    respond_to do |format|
      format.html { redirect_to(venue_type_details_url) }
      format.xml  { head :ok }
    end
  end
end
