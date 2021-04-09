class Booking < ApplicationRecord
  belongs_to :ebike
  belongs_to :user
end
