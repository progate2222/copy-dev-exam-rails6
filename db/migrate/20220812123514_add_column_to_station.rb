class AddColumnToStation < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :route2, :string
    add_column :stations, :station_name2, :string
    add_column :stations, :mitutes2, :integer
    add_column :stations, :route3, :string
    add_column :stations, :station_name3, :string
    add_column :stations, :mitutes3, :integer
  end
end
