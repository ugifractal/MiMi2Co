class Meeting < ApplicationRecord

  belongs_to :meeting_type, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :meeting_status, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :club, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  has_many :meeting_details
  has_many :user_meeting_availability

  scope :sorted, lambda { order("id ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :newest_first1, lambda { order("date DESC") }
  scope :search, lambda {|query| where(["display_name LIKE ?", "%#{query}%"]) }

end
