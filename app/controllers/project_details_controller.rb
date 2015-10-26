class ProjectDetailsController < ApplicationController
before_filter :set_current_page, except: [:index]
  # GET /project_details
  # GET /project_details.json
  def index
    @project_details = ProjectDetail.paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('project_year,project_id,project_name')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_detail }  # del s
    end
  end

# GET /project_details/search
 def search
    @project_details = ProjectDetail.like(params[:query]).paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('project_year,project_id,project_name')
    render 'index'   
 end


  # GET /project_details/1
  # GET /project_details/1.json
  def show
    @project_detail = ProjectDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_detail } # delete s
    end
  end

  # GET /project_details/new
  # GET /project_details/new.json
  def new
    @project_detail = ProjectDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_detail }
    end
  end

  # GET /project_details/1/edit
  def edit
    @project_detail = ProjectDetail.find(params[:id])
  end

  # POST /project_details
  # POST /project_details.json
  def create
    @project_detail = ProjectDetail.new(params[:project_detail])
    @project_detail.vendor_id = VendorDetail.find_by_vendor_id params[:vendor_id]

    respond_to do |format|
      if @project_detail.save
        format.html { redirect_to(project_detail_url(@project_detail, page: @current_page),
                                  notice: 'Project detail was successfully created.') }

        format.json { render json: @project_detail, status: :created, location: @project_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @project_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_details/1
  # PUT /project_details/1.json
  def update
    @project_detail = ProjectDetail.find(params[:id])

    respond_to do |format|
      if @project_detail.update_attributes(params[:project_detail])
        format.html { redirect_to(project_detail_url(@project_detail, page: @current_page),
                                  notice: 'Project detail was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_detail.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /project_details/1
  # DELETE /project_details/1.json
  def destroy
    @project_detail = ProjectDetail.find(params[:id])
    @project_detail.destroy

    respond_to do |format|
      format.html { redirect_to project_details_url(page: @current_page) }
      format.json { head :no_content }
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  
  def set_current_page
    @current_page = params[:page] || 1
 end
end
