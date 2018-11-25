class MeetingStatus < ApplicationRecord

  has_many :meetings
  accepts_nested_attributes_for :meetings, allow_destroy: true, reject_if: proc {|att| att['email'].blank?}

end
