class UsersClub < ApplicationRecord
  belongs_to :club, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :user, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :user_type, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.

  scope :sorted, lambda { order("comments ASC") }
  scope :first_name, lambda { joins(:user).merge(User.first_name) }
  scope :active_first, lambda { order("user_type_id ASC") }
  scope :newest_first1, lambda { order("date DESC") }
  scope :search, lambda {|query| where(["display_name LIKE ?", "%#{query}%"]) }

end
