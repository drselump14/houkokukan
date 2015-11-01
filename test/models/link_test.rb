# == Schema Information
#
# Table name: links
#
#  id               :integer          not null, primary key
#  link_id          :string(255)
#  start_node_id    :string(255)
#  finish_node_id   :string(255)
#  link_type        :integer
#  width            :float(24)
#  level_difference :boolean
#  level_latitude   :float(24)
#  level_longitude  :float(24)
#  dot_block        :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  length           :integer
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
