class ClubsMeetingTemplate < ApplicationRecord

  belongs_to :club, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :meeting_template, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.

end
