class AddIncidentToOtherParties < ActiveRecord::Migration
  def change
    add_reference :other_parties, :incident, index: true, foreign_key: true
  end
end
