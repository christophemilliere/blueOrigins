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

require 'test_helper'

class TeleporterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
