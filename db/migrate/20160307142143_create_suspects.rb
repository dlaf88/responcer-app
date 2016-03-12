class CreateSuspects < ActiveRecord::Migration
  def change
    create_table :suspects do |t|
      t.string :name
      t.string :sex
      t.string :age
      t.string :height
      t.string :weight
      t.string :eye_color
      t.string :hair_color
      t.string :facial_hair
      t.text :clothes_description
      t.text :other_details

      t.timestamps null: false
    end
  end
end
