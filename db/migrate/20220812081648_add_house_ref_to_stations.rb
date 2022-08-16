class AddHouseRefToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :house, null: false, foreign_key: true
  end
end
