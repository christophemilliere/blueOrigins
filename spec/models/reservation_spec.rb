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

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to(:teleporter) }
  end
end
