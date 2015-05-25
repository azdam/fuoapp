class AccomodationsController < ApplicationController
  before_action :set_accomodation, only: [:show, :edit, :update, :destroy]

  # GET /accomodations
  # GET /accomodations.json
  def index
    @accomodations = Accomodation.all
    respond_to do |format|
      format.html
      format.json { render json: @accomodations, status: 200 }
    end
  end

  # GET /accomodations/1
  # GET /accomodations/1.json
  def show
    @accomodation.hostel_name = Hostel.find(@accomodation.hostel_id).name
    respond_to do |format|
      format.html
      format.json { @accomodation }
    end
  end

  # GET /accomodations/new
  def new
    @accomodation = Accomodation.new
    @students = Student.all
    @hostels = Hostel.all
  end

  # GET /accomodations/1/edit
  def edit
        @students = Student.all
        @hostels = Hostel.all
  end

  # POST /accomodations
  # POST /accomodations.json
  def create
    @accomodation = Accomodation.new(accomodation_params)
    @accomodation.has_occupant = true
    @accomodation.room_nos = @accomodation.room_nos.rjust(3,'0')

    respond_to do |format|
      if @accomodation.save
        format.html { redirect_to @accomodation, notice: 'Accomodation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @accomodation }
      else
        format.html { render action: 'new' }
        format.json { render json: @accomodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accomodations/1
  # PATCH/PUT /accomodations/1.json
  def update
    respond_to do |format|
      if @accomodation.update(accomodation_params)
        format.html { redirect_to @accomodation, notice: 'Accomodation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accomodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accomodations/1
  # DELETE /accomodations/1.json
  def destroy
    @accomodation.destroy
    respond_to do |format|
      format.html { redirect_to accomodations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accomodation
      @accomodation = Accomodation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accomodation_params
      params.require(:accomodation).permit(:room_nos, :validity_period, :status, :student_id, :hostel_id )
    end
end
