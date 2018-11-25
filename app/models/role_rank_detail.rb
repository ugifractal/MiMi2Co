class RoleRankDetail < ApplicationRecord

  belongs_to :role_rank, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :role, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.


end
