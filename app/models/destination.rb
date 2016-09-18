# == Schema Information
#
# Table name: destinations
#
#  id         :integer          not null, primary key
#  departure  :string
#  arrival    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Destination < ActiveRecord::Base
  has_many :teleporters
  validates :departure, presence: true, uniqueness: true
  validates :arrival, presence: true, uniqueness: true

  def full_desination
    "#{departure} - #{arrival}"
  end
end
