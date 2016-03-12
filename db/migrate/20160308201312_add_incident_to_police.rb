class AddIncidentToPolice < ActiveRecord::Migration
  def change
    add_reference :police, :incident, index: true, foreign_key: true
  end
end
