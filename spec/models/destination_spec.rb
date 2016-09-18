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

require 'rails_helper'

RSpec.describe Destination, type: :model do
  describe 'relations' do
    it { should have_many(:teleporters)}
    it { should validate_presence_of(:departure)}
    it { should validate_presence_of(:arrival)}
  end
end
