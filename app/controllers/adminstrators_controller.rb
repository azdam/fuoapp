class AdminstratorsController < ApplicationController
  before_action :set_adminstrator, only: [:show, :edit, :update, :destroy]

  # GET /adminstrators
  # GET /adminstrators.json
  def index
    @adminstrators = Adminstrator.all
  end

  # GET /adminstrators/1
  # GET /adminstrators/1.json
  def show
  end

  # GET /adminstrators/new
  def new
    @adminstrator = Adminstrator.new
  end

  # GET /adminstrators/1/edit
  def edit
  end

  # POST /adminstrators
  # POST /adminstrators.json
  def create
    @adminstrator = Adminstrator.new(adminstrator_params)

    respond_to do |format|
      if @adminstrator.save
        format.html { redirect_to @adminstrator, notice: 'Adminstrator was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminstrator }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminstrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminstrators/1
  # PATCH/PUT /adminstrators/1.json
  def update
    respond_to do |format|
      if @adminstrator.update(adminstrator_params)
        format.html { redirect_to @adminstrator, notice: 'Adminstrator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminstrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminstrators/1
  # DELETE /adminstrators/1.json
  def destroy
    @adminstrator.destroy
    respond_to do |format|
      format.html { redirect_to adminstrators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminstrator
      @adminstrator = Adminstrator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminstrator_params
      params.require(:adminstrator).permit(:employee_id, :lastname, :firstname, :email, :auth_level)
    end
end
