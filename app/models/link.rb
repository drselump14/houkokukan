# == Schema Information
#
# Table name: links
#
#  id               :integer          not null, primary key
#  link_id          :string(255)
#  start_node_id    :string(255)
#  finish_node_id   :string(255)
#  type             :integer
#  width            :float(24)
#  level_difference :boolean
#  level_latitude   :float(24)
#  level_longitude  :float(24)
#  dot_block        :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Link < ActiveRecord::Base
  belongs_to :start_node, class_name: 'Node'
  belongs_to :finish_node, class_name: 'Node'

  scope :without_braille_block, -> { where(dot_block: false) }
  def self.to_graph_array
    self.select(:start_node_id, :finish_node_id, :length).map { |r| [r.start_node_id.to_sym, r.finish_node_id.to_sym, r.length] }
  end
end
