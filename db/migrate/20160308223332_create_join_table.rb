class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :incidents, :incident_causes do |t|
      # t.index [:incident_id, :incident_cause_id]
      # t.index [:incident_cause_id, :incident_id]
    end
  end
end
