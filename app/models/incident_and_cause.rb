class IncidentAndCause < ActiveRecord::Base
  belongs_to :incident
  belongs_to :incident_cause
end
