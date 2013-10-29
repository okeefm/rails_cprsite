class PrivilegeLevelsController < ApplicationController
  before_action :set_privilege_level, only: [:show, :edit, :update, :destroy]

  # GET /privilege_levels
  # GET /privilege_levels.json
  def index
    @privilege_levels = PrivilegeLevel.all
  end

  # GET /privilege_levels/1
  # GET /privilege_levels/1.json
  def show
  end

  # GET /privilege_levels/new
  def new
    @privilege_level = PrivilegeLevel.new
  end

  # GET /privilege_levels/1/edit
  def edit
  end

  # POST /privilege_levels
  # POST /privilege_levels.json
  def create
    @privilege_level = PrivilegeLevel.new(privilege_level_params)

    respond_to do |format|
      if @privilege_level.save
        format.html { redirect_to @privilege_level, notice: 'Privilege level was successfully created.' }
        format.json { render action: 'show', status: :created, location: @privilege_level }
      else
        format.html { render action: 'new' }
        format.json { render json: @privilege_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /privilege_levels/1
  # PATCH/PUT /privilege_levels/1.json
  def update
    respond_to do |format|
      if @privilege_level.update(privilege_level_params)
        format.html { redirect_to @privilege_level, notice: 'Privilege level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @privilege_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /privilege_levels/1
  # DELETE /privilege_levels/1.json
  def destroy
    @privilege_level.destroy
    respond_to do |format|
      format.html { redirect_to privilege_levels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_privilege_level
      @privilege_level = PrivilegeLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def privilege_level_params
      params.require(:privilege_level).permit(:name)
    end
end
