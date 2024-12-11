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
# Foreign Keys
#
#  fk_rails_...  (fan_id => users.id)
#  fk_rails_...  (photo_id => photos.id)
#
class Like < ApplicationRecord
  belongs_to :fan, class_name: "User", foreign_key: "fan_id", required: true, counter_cache: true
  belongs_to :photo, class_name: "Photo", foreign_key: "photo_id", required: true, counter_cache: true
end
