# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  uuid       :string(255)
#  title      :string(255)
#  subtitle   :string(255)
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  belongs_to :ucode
end
