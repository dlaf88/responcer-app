class AddOtherTypesOfIncidentsToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :other_type_incident, :text
  end
end
