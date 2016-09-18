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

require 'test_helper'

class DestinationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
