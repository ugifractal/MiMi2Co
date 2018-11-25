class ClubExecutiveUser < ApplicationRecord

  belongs_to :club, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :role, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :user, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.


end
