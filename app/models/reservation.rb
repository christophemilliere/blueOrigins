# == Schema Information
#
# Table name: reservations
#
#  id            :integer          not null, primary key
#  name          :string
#  teleporter_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Reservation < ActiveRecord::Base
  belongs_to :teleporter
  validates :name, presence: true

  def outdated?
   self.remaining <= 0
  end

  def remaining
    ((self.created_at + 1.hour) - Time.now).to_i / 60
  end

end
