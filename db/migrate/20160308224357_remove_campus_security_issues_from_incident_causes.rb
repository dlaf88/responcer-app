class RemoveCampusSecurityIssuesFromIncidentCauses < ActiveRecord::Migration
  def change
    remove_column :incident_causes, :campus_security_issue, :string
    remove_column :incident_causes, :information_security_issue, :string
    remove_column :incident_causes, :emergency_preparedness_issue, :string
    remove_column :incident_causes, :maintenance_issue, :string
  end
end

