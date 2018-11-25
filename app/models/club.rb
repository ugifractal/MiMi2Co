class Club < ApplicationRecord

  belongs_to :club_type, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :role_rank, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.

  has_many :meetings
  has_many :meeting_details, :through => :meetings
  has_many :users_clubs
  has_many :users, :through => :users_clubs
  has_many :club_executive_users
  has_many :users_roles
  has_many :clubs_meeting_templates


  scope :sorted, lambda { order("id ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }
  # scope :daybreak, -> {joins(:users).where('users_clubs.club_id = 2')}

end
