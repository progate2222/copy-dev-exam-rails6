class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :stations, :route2, :string
    remove_column :stations, :station_name2, :string
    remove_column :stations, :mitutes2, :integer
    remove_column :stations, :route3, :string
    remove_column :stations, :station_name3, :string
    remove_column :stations, :mitutes3, :integer
  end
end
