# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  comments_count         :integer          default(0)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  likes_count            :integer          default(0)
#  password_digest        :string
#  private                :boolean          default(FALSE)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default Devise modules if needed (e.g. :database_authenticatable, :registerable, etc.)
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  # Password authentication (make sure password_digest column exists)
  has_secure_password

  # Associations (Using modern Rails syntax)
  has_many :photos, foreign_key: :owner_id, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy
  has_many :likes, foreign_key: :fan_id, dependent: :destroy
  has_many :followrequests, foreign_key: :recipient_id, dependent: :destroy
  has_many :sentrequests, foreign_key: :sender_id, dependent: :destroy
  has_many :posts, through: :comments, source: :photo
end
