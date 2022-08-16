class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer  :rent
      t.string :address
      t.integer  :age
      t.text :remarks

      t.timestamps
    end
  end
end
