# == Schema Information
#
# Table name: ucodes
#
#  id         :integer          not null, primary key
#  uuid       :string(255)
#  place_id   :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UcodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
