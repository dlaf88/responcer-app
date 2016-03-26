class AddDialogBoxtoIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :dialog_box, :text
  end
end
