class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.text :location
      t.string :date
      t.string :time
      t.text :officer_on_duty
      t.string :responders_called
      t.string :responders_arrived_name
      t.string :guard_signature
      t.string :supervisor_name

      t.timestamps null: false
    end
  end
end
