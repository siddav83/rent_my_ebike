class CreateEbikes < ActiveRecord::Migration[6.1]
  def change
    create_table :ebikes do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
