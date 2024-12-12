# == Schema Information
#
# Table name: follow_requests
#
#  id           :bigint           not null, primary key
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recipient_id :integer
#  sender_id    :integer
#
# Indexes
#
#  index_follow_requests_on_recipient_id  (recipient_id)
#  index_follow_requests_on_sender_id     (sender_id)
#
class FollowRequest < ApplicationRecord
  # Associations
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
end
