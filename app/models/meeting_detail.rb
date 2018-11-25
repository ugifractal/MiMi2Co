class MeetingDetail < ApplicationRecord

  belongs_to :meeting, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :role, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :user, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :meeting_detail_status, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.

  has_many :clubs, :through => :meetings

  scope :sorted, lambda { order("id DESC" , "sort_order ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :sort_order, lambda { order("sort_order ASC") }
  scope :search, lambda {|query| where(["discription LIKE ?", "%#{query}%"]) }

end
