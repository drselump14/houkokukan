# == Schema Information
#
# Table name: places
#
#  id               :integer          not null, primary key
#  entrance_id      :string(255)
#  node_id          :string(255)
#  place_id         :string(255)
#  name             :string(255)
#  entrance_type    :integer
#  door_type        :integer
#  level_difference :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Place < ActiveRecord::Base
end
