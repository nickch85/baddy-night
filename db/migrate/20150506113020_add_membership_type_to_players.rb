class AddMembershipTypeToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :membership_type, :string
  end
end
