class CreateAlarmCompanies < ActiveRecord::Migration
  def change
    create_table :alarm_companies do |t|
      t.string :name
      t.string :representative_name
      t.string :operator_id

      t.timestamps null: false
    end
  end
end
