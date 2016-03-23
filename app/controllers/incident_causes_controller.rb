class IncidentCausesController < ApplicationController
  def new
    @incidentcause = IncidentCause.new
  end 

  def create
    @incidentcause = IncidentCause.new(incident_cause_params)
    
    respond_to do |format|
      if @incidentcause.save
        format.html { redirect_to new_incident_cause_path, notice: 'Incident Cause was successfully created.' }
        #format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new }
        
      end
    end
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incidentcause = IncidentCause.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incident_cause_params
      params.require(:incident_cause).permit(:issue,:issue_type)
    end
  
end 