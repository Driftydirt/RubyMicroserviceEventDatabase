class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.datetime :createdAt
      t.datetime :scheduledAt
      t.timestamps
    end
  end
end
