class AddCreatorToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :creator, :string
  end
end
