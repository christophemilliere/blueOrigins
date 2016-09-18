# == Schema Information
#
# Table name: teleporters
#
#  id             :integer          not null, primary key
#  destination_id :integer
#  capacity       :integer          default(3)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Teleporter < ActiveRecord::Base
  belongs_to :destination
  has_many :reservations

  validates :capacity, presence: true, numericality: {greater_than: 0}

  def departure_available?
    (reservations.count) < self.capacity
  end

  def remaining_seats
    (capacity - reservations.count)
  end
end
