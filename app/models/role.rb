class Role < ApplicationRecord

  belongs_to :role_type, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  has_many :role_rank_detail
  has_many :users_roles
  has_many :meeting_details
  has_many :meeting_template_details
  has_many :club_executive_users

end
