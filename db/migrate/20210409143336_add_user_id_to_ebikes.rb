class AddUserIdToEbikes < ActiveRecord::Migration[6.1]
  add_reference :ebikes, :user, null: true, foreign_key: true
  def change
  end
end
