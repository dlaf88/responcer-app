class IncidentCause < ActiveRecord::Base
  has_many :incident_and_causes
  has_many :incidents, through: :incident_and_causes
  
  
 
end
