# == Schema Information
#
# Table name: photos
#
#  id             :bigint           not null, primary key
#  caption        :text
#  comments_count :integer
#  image          :string
#  likes_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
# Indexes
#
#  index_photos_on_owner_id  (owner_id)
#
class Photo < ApplicationRecord
  # Associations
  belongs_to :owner, class_name: "User"
  has_many :comments, class_name: "Comment"
  has_many :likes, dependent: :destroy, foreign_key: "photo_id", dependent: :destroy

  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
