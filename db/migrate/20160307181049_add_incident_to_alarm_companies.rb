class AddIncidentToAlarmCompanies < ActiveRecord::Migration
  def change
    add_reference :alarm_companies, :incident, index: true, foreign_key: true
  end
end
