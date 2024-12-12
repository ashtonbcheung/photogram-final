# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fan_id     :integer
#  photo_id   :integer
#
# Indexes
#
#  index_likes_on_fan_id    (fan_id)
#  index_likes_on_photo_id  (photo_id)
#
class Like < ApplicationRecord
  # Associations
  belongs_to :photo
  belongs_to :fan, class_name: "User"
end
