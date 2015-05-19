class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :neighborhood_id

      t.timestamps

    end
  end
end
