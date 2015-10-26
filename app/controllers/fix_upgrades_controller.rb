class FixUpgradesController < ApplicationController
#  before_filter :set_current_page, except: [:index]
  # GET /fix_upgrades
  # GET /fix_upgrades.json
  def index
    @fix_upgrades = FixUpgrade.paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('kurupan_no,dateof_work')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fix_upgrades }
    end
  end

  # GET /fix_upgrades/1
  # GET /fix_upgrades/1.json
  def show
    @fix_upgrade = FixUpgrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fix_upgrade }
    end
  end

  # GET /fix_upgrades/new
  # GET /fix_upgrades/new.json
  def new
    @fix_upgrade = FixUpgrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fix_upgrade }
    end
  end

  # GET /fix_upgrades/1/edit
  def edit
    @fix_upgrade = FixUpgrade.find(params[:id])
  end

  # POST /fix_upgrades
  # POST /fix_upgrades.json
  def create
    @fix_upgrade = FixUpgrade.new(params[:fix_upgrade])

    respond_to do |format|
      if @fix_upgrade.save
        format.html { redirect_to @fix_upgrade, notice: 'Fix upgrade was successfully created.' }
        format.json { render json: @fix_upgrade, status: :created, location: @fix_upgrade }
      else
        format.html { render action: "new" }
        format.json { render json: @fix_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fix_upgrades/1
  # PUT /fix_upgrades/1.json
  def update
    @fix_upgrade = FixUpgrade.find(params[:id])

    respond_to do |format|
      if @fix_upgrade.update_attributes(params[:fix_upgrade])
        format.html { redirect_to @fix_upgrade, notice: 'Fix upgrade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fix_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /Fix_Upgrade/search
 def search
    @fix_upgrades = FixUpgrade.like(params[:query]).paginate(page: params[:page],
                             per_page: params[:per_page])
                   .order('kurupan_no,dateof_work')
    render 'index'   
 end

  # DELETE /fix_upgrades/1
  # DELETE /fix_upgrades/1.json
  def destroy
    @fix_upgrade = FixUpgrade.find(params[:id])
    @fix_upgrade.destroy

    respond_to do |format|
      format.html { redirect_to fix_upgrades_url }
      format.json { head :no_content }
    end
  end
end
