class AddAlarmTypetoAlarms < ActiveRecord::Migration
  def change
    add_column :alarm_companies, :alarm_company_type, :string
  end
end
