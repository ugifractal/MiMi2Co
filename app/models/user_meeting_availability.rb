class UserMeetingAvailability < ApplicationRecord

  belongs_to :meeting, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.
  belongs_to :user, optional: true #alae001 - need to remove optional statement to ensure rule is enforced.


end
