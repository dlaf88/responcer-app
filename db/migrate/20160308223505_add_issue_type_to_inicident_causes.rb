class AddIssueTypeToInicidentCauses < ActiveRecord::Migration
  def change
    add_column :incident_causes, :issue_type, :string
  end
end
