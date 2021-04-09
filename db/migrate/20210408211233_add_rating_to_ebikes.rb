class AddRatingToEbikes < ActiveRecord::Migration[6.1]
  def change
    add_column :ebikes, :rating, :integer
  end
end
