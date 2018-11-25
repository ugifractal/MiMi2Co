class MeetingTemplate < ApplicationRecord

  has_many :meeting_template_details
  has_many :clubs_meeting_templates


end
