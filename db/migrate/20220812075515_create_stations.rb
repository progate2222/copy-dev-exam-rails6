class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :station_name
      t.integer  :mitutes

      t.timestamps
    end
  end
end
