class AddIncidentToSuspects < ActiveRecord::Migration
  def change
    add_reference :suspects, :incident, index: true, foreign_key: true
  end
end
