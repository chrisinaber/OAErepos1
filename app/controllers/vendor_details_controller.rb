class VendorDetailsController < ApplicationController
before_filter :set_current_page, except: [:index]
  # GET /vendor_details
  # GET /vendor_details.json

 def index
    @vendor_details = VendorDetail.paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('vendor_id,vendor_name')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vendor_detail }
    end
  end

# GET /vendor_details/search
 def search
    @vendor_details = VendorDetail.like(params[:query]).paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('vendor_id,vendor_name')
    render 'index'   
 end

  # GET /vendor_details/1
  # GET /vendor_details/1.json
 def show
    @vendor_detail = VendorDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vendor_detail }
    end
  end

  # GET /vendor_details/new
  # GET /vendor_details/new.json
  def new
    @vendor_detail = VendorDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vendor_detail }
    end
  end

  # GET /vendor_details/1/edit
  def edit
    @vendor_detail = VendorDetail.find(params[:id])
  end

  # POST /vendor_details
  # POST /vendor_details.json
  def create
    @vendor_detail = VendorDetail.new(params[:vendor_detail])

    respond_to do |format|
      if @vendor_detail.save
        format.html { redirect_to(vendor_detail_url(@vendor_detail, page: @current_page),
                                  notice: 'Vendor detail was successfully created.') }
        format.json { render json: @vendor_detail, status: :created, location: @vendor_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @vendor_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vendor_details/1
  # PUT /vendor_details/1.json
  def update
    @vendor_detail = VendorDetail.find(params[:id])

    respond_to do |format|
      if @vendor_detail.update_attributes(params[:vendor_detail])
        format.html { redirect_to(vendor_detail_url(@vendor_detail, page: @current_page),
                                  notice: 'Vendor detail was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vendor_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_details/1
  # DELETE /vendor_details/1.json
  def destroy
    @vendor_detail = VendorDetail.find(params[:id])
    @vendor_detail.destroy

    respond_to do |format|
      format.html { redirect_to vendor_details_url(page: @current_page) }
      format.json { head :no_content }
    end
  end
# Use callbacks to share common setup or constraints between actions.
  
  def set_current_page
    @current_page = params[:page] || 1
 end
end
