# == Schema Information
#
# Table name: nodes
#
#  id         :integer          not null, primary key
#  node_id    :string(255)
#  address    :string(255)
#  latitude   :decimal(15, 10)
#  longitude  :decimal(15, 10)
#  height     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class NodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
