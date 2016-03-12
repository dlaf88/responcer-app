class CreatePolice < ActiveRecord::Migration
  def change
    create_table :police do |t|
      t.boolean :services_called
      t.boolean :police_response
      t.boolean :police_arrival
      t.string :officer_name
      t.string :officer_badge
      t.string :time_of_call
      t.string :time_of_arrival

      t.timestamps null: false
    end
  end
end
