class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event


def price
  @price = event.price
end 

  # validates :maximum_guests_count
  #
  # def maximum_guests_count
  #   if guests_count > 3
  #     errors.add(:guests_count, ": One person can at most register for 3 guests.")
  #   end
  # end


end
