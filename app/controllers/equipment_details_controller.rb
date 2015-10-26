class EquipmentDetailsController < ApplicationController
before_filter :set_current_page, except: [:index]
  # GET /equipment_details
  # GET /equipment_details.json
  def index
    @equipment_details = EquipmentDetail.paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('kurupan_no,eqmtype_id')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipment_details }
    end
  end

# GET /equipment_details/search
 def search
    @equipment_details = EquipmentDetail.like(params[:query]).paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('kurupan_no,eqmtype_id')
    render 'index'   
 end



  # GET /equipment_details/1
  # GET /equipment_details/1.json
  def show
    @equipment_detail = EquipmentDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipment_detail }
    end
  end

  # GET /equipment_details/new
  # GET /equipment_details/new.json
  def new
    @equipment_detail = EquipmentDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipment_detail }
    end
  end

  # GET /equipment_details/1/edit
  def edit
    @equipment_detail = EquipmentDetail.find(params[:id])
  end

  # POST /equipment_details
  # POST /equipment_details.json
  def create
    @equipment_detail = EquipmentDetail.new(params[:equipment_detail])

    respond_to do |format|
      if @equipment_detail.save
        format.html { redirect_to(equipment_detail_url(@equipment_detail,page:@current_page), notice: 'Equipment detail was successfully created.') }
        format.json { render json: @equipment_detail, status: :created, location: @equipment_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @equipment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipment_details/1
  # PUT /equipment_details/1.json
  def update
    @equipment_detail = EquipmentDetail.find(params[:id])

    respond_to do |format|
      if @equipment_detail.update_attributes(params[:equipment_detail])
        format.html { redirect_to(equipment_detail_url(@equipment_detail,page:@current_page), notice: 'Equipment detail was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_details/1
  # DELETE /equipment_details/1.json
  def destroy
    @equipment_detail = EquipmentDetail.find(params[:id])
    @equipment_detail.destroy

    respond_to do |format|
      format.html { redirect_to equipment_details_url(page:@current_page) }
      format.json { head :no_content }
    end
  end

 private
# Use callbacks to share common setup or constraints between actions.
  
  def set_current_page
    @current_page = params[:page] || 1
 end
end
