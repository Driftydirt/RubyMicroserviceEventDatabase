class AddInviteesToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :invitees, :text, array: true, default: []
  end
end
