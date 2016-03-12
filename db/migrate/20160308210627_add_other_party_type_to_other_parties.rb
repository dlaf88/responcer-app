class AddOtherPartyTypeToOtherParties < ActiveRecord::Migration
  def change
    add_column :other_parties, :other_party_type, :string
  end
end
