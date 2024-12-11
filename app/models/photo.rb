# == Schema Information
#
# Table name: photos
#
#  id             :bigint           not null, primary key
#  caption        :text
#  comments_count :integer          default(0)
#  image          :string
#  likes_count    :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Photo < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id", required: true
  has_many :comments, class_name: "Comment", foreign_key: "photo_id", dependent: :destroy
  has_many :likes, class_name: "Like", foreign_key: "photo_id", dependent: :destroy
  has_many :authors, through: :comments, source: :author

  mount_uploader :image, ImageUploader

end
