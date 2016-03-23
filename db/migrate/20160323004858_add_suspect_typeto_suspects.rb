class AddSuspectTypetoSuspects < ActiveRecord::Migration
  def change
    add_column :suspects, :suspect_type, :string
  end
end
