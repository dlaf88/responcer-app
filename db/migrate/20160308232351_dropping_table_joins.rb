class DroppingTableJoins < ActiveRecord::Migration
  def change
     drop_join_table :incidents, :incident_causes
  end
end
