class User < ApplicationRecord

  has_secure_password

  has_many :users_roles
  has_many :users_clubs
  has_many :clubs, :through => :users_clubs
  has_many :meeting_details
  has_many :user_meeting_availability
  has_many :club_executive_users


  scope :sorted, lambda { order("id ASC") }
  scope :first_name, lambda { order("first_name ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, lambda {|query| where(["display_name LIKE ?", "%#{query}%"]) }

  scope :active, -> { joins(:users_clubs).where(:users_clubs => {:user_type_id => 1}) }

end
