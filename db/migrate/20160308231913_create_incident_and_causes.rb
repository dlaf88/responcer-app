class CreateIncidentAndCauses < ActiveRecord::Migration
  def change
    create_table :incident_and_causes do |t|
      t.integer :incident_id
      t.integer :incident_cause_id

      t.timestamps null: false
    end
  end
end
