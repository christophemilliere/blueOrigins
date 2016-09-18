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

require 'rails_helper'

RSpec.describe Teleporter, type: :model do
  describe 'relations' do
    it { should belong_to(:destination) }
    it { should have_many(:reservations)}
    it { should validate_presence_of(:capacity) }
    it { should validate_numericality_of(:capacity).is_greater_than(0) }
  end
end
