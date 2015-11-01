# == Schema Information
#
# Table name: nodes
#
#  id         :integer          not null, primary key
#  node_id    :string(255)
#  address    :string(255)
#  latitude   :float(24)
#  longitude  :float(24)
#  height     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Node < ActiveRecord::Base
  def self.convert_from_node_id_to_coordinate(node_ids)
    where(node_id: node_ids).select(:latitude, :longitude).map { |node| [node.latitude, node.longitude] }
  end
end
