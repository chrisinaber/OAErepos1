class DeliveryDetailsController < ApplicationController
before_filter :set_current_page, except: [:index]
  # GET /delivery_details
  # GET /delivery_details.json
  def index
    @delivery_details = DeliveryDetail.paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('delivery_no,emptype_id')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delivery_details }
    end
  end

# GET /delivery_details/search
 def search
    @delivery_details = DeliveryDetail.like(params[:query]).paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('delivery_no,emptype_id')
    render 'index'   
 end

  # GET /delivery_details/1
  # GET /delivery_details/1.json
  def show
    @delivery_detail = DeliveryDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delivery_detail }
    end
  end

  # GET /delivery_details/new
  # GET /delivery_details/new.json
  def new
    @delivery_detail = DeliveryDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delivery_detail }
    end
  end

  # GET /delivery_details/1/edit
  def edit
    @delivery_detail = DeliveryDetail.find(params[:delivery_detail])
  end

  # POST /delivery_details
  # POST /delivery_details.json
  def create
    @delivery_detail = DeliveryDetail.new(params[:delivery_detail])

    respond_to do |format|
      if @delivery_detail.save
        format.html { redirect_to(delivery_detil_url(@delivery_detail,page:@current_page), notice: 
        'Delivery detail was successfully created.') }
        format.json { render json: @delivery_detail, status: :created, location: @delivery_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @delivery_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /delivery_details/1
  # PUT /delivery_details/1.json
  def update
    @delivery_detail = DeliveryDetail.find(params[:id])

    respond_to do |format|
      if @delivery_detail.update_attributes(params[:delivery_detail])
        format.html { redirect_to(delivery_detil_url(@delivery_detail,page:@current_page), notice:
        'Delivery detail was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delivery_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_details/1
  # DELETE /delivery_details/1.json
  def destroy
    @delivery_detail = DeliveryDetail.find(params[:id])
    @delivery_detail.destroy

    respond_to do |format|
      format.html { redirect_to delivery_details_url(page:@current_page) }
      format.json { head :no_content }
    end
  end
 private
# Use callbacks to share common setup or constraints between actions.
  
  def set_current_page
    @current_page = params[:page] || 1
  end

end
