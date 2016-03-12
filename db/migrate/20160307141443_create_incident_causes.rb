class CreateIncidentCauses < ActiveRecord::Migration
  def change
    create_table :incident_causes do |t|
      t.text :campus_security_issue
      t.text :information_security_issue
      t.text :emergency_preparedness_issue
      t.text :maintenance_issue

      t.timestamps null: false
    end
  end
end
