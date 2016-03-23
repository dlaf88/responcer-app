class IncidentsController < ApplicationController
  http_basic_authenticate_with name: ENV['EXCEL_ADMIN'], password:  ENV['EXCEL_PASSWORD']
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  # GET /incidents
  # GET /incidents.json
  def index
    @incidents = Incident.all
  end
  def vic
    
    respond_to do |format|
      format.js 
      
    end 
  end 
  # GET /incidents/1
  # GET /incidents/1.json
  def show
    
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
    @incident.build_alarm_company
    @incident.build_police
    
    @incident.suspects
  end
   def test
    @incident = Incident.new
    @incident.build_alarm_company
    @incident.build_police
    @incident.other_parties.build
    @incident.suspects.build
   
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @incident = Incident.new(incident_params)
    
    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, notice: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidents/1
  # PATCH/PUT /incidents/1.json
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, notice: 'Incident was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.json
  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to incidents_url, notice: 'Incident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incident_params
      params.require(:incident).permit(:location, :date, :time, :officer_on_duty, :responders_called, :responders_arrived_name, :guard_signature, :supervisor_name, alarm_company_attributes: [:name,:representative_name,:operator_id],police_attributes: [:services_called, :police_response,:police_arrival,:officer_name,:officer_badge,:time_of_call,:time_of_arrival],suspects_attributes: [:id,:name,:age,:sex,:height,:weight,:eye_color,:hair_color,:facial_hair,:clothes_description],other_parties_attributes: [:id,:other_party_type,:name,:age,:sex,:height,:weight,:eye_color,:hair_color,:facial_hair,:clothes_description,:other_details],incident_cause_ids:[])
    end
end
