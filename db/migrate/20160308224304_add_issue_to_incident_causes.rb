class AddIssueToIncidentCauses < ActiveRecord::Migration
  def change
    add_column :incident_causes, :issue, :string
  end
end
