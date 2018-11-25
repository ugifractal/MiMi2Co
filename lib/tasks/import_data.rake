task import_data: :environment do
  require 'csv'

  ClubExecutiveUser.transaction do
    clubexecutiveusers = CSV.read("#{Rails.root}/tmp/import/ClubExecUsers.csv")
    columns = [:user_id, :club_id, :role_id, :start_date, :end_date, :comments]
    ClubExecutiveUser.import columns, clubexecutiveusers, validate: false
  end

  ClubType.transaction do
    club_types = CSV.read("#{Rails.root}/tmp/import/ClubTypes.csv")
    columns = [:name, :description]
    ClubType.import columns, club_types, validate: false
  end

  Club.transaction do
    clubs = CSV.read("#{Rails.root}/tmp/import/Clubs.csv")
    columns = [:name, :description, :city, :country, :club_type_id, :start_date, :end_date, :address, :district, :division, :area, :registration_number, :website, :email, :mission, :facebook, :display_name, :logo, :role_rank_id]
    Club.import columns, clubs, validate: false
  end

  ClubsMeetingTemplate.transaction do
    clubs_meeting_template = CSV.read("#{Rails.root}/tmp/import/ClubsMeetingTemplates.csv")
    columns = [:club_id, :meeting_template_id, :comments]
  ClubsMeetingTemplate.import columns, clubs_meeting_template, validate: false
  end

  MeetingDetail.transaction do
    meeting_details = CSV.read("#{Rails.root}/tmp/import/MeetingDetails.csv")
    columns = [:meeting_id, :role_id, :user_id, :meeting_detail_status_id, :sort_order, :duration_from, :duration_to, :description, :comments]
    MeetingDetail.import columns, meeting_details, validate: false
  end

  MeetingTemplateDetail.transaction do
    meeting_template_details = CSV.read("#{Rails.root}/tmp/import/MeetingTemplateDetails.csv")
    columns = [:meeting_template_id, :role_id, :sort_order, :duration_from, :duration_to, :description, :comments]
    MeetingTemplateDetail.import columns, meeting_template_details, validate: false
  end

  MeetingTemplate.transaction do
    meeting_templates = CSV.read("#{Rails.root}/tmp/import/MeetingTemplates.csv")
    columns = [:name, :description, :sort_order]
    MeetingTemplate.import columns, meeting_templates, validate: false
  end

  MeetingType.transaction do
    meeting_types = CSV.read("#{Rails.root}/tmp/import/MeetingTypes.csv")
    columns = [:name, :description]
    MeetingType.import columns, meeting_types, validate: false
  end

  MeetingStatus.transaction do
    meeting_statuses = CSV.read("#{Rails.root}/tmp/import/MeetingStatuses.csv")
    columns = [:name, :description]
    MeetingStatus.import columns, meeting_statuses, validate: false
  end

  MeetingDetailStatus.transaction do
    meeting_detail_statuses = CSV.read("#{Rails.root}/tmp/import/MeetingDetailStatuses.csv")
    columns = [:name, :description]
    MeetingDetailStatus.import columns, meeting_detail_statuses, validate: false
  end


  Meeting.transaction do
    meetings = CSV.read("#{Rails.root}/tmp/import/Meetings.csv")
    columns = [:meeting_type_id, :meeting_status_id, :club_id, :location, :date, :theme, :address, :arrival_comments]
    Meeting.import columns, meetings, validate: false
  end

  RoleRankDetail.transaction do
    role_rank_details = CSV.read("#{Rails.root}/tmp/import/RoleRankDetails.csv")
    columns = [:role_rank_id, :role_id, :sort_order]
  RoleRankDetail.import columns, role_rank_details, validate: false
  end

  RoleRank.transaction do
    role_ranks = CSV.read("#{Rails.root}/tmp/import/RoleRanks.csv")
    columns = [:name, :location]
  RoleRank.import columns, role_ranks, validate: false
  end

  RoleType.transaction do
    role_types = CSV.read("#{Rails.root}/tmp/import/RoleTypes.csv")
    columns = [:name, :description]
  RoleType.import columns, role_types, validate: false
  end

  Role.transaction do
    roles = CSV.read("#{Rails.root}/tmp/import/Roles.csv")
    columns = [:name, :description, :code, :role_type_id, :status, :assignment_order, :key_role_flg, :new_user_penalty_flg, :repeater_flg, :print_flg]
  Role.import columns, roles, validate: false
  end

  UserMeetingAvailability.transaction do
    user_meeting_availabilities = CSV.read("#{Rails.root}/tmp/import/UserMeetingAvailabilities.csv")
    columns = [:user_id, :meeting_id, :status]
  UserMeetingAvailability.import columns, user_meeting_availabilities, validate: false
  end

  UserType.transaction do
    user_types = CSV.read("#{Rails.root}/tmp/import/UserTypes.csv")
    columns = [:name, :description]
  UserType.import columns, user_types, validate: false
  end

  User.transaction do
    users = CSV.read("#{Rails.root}/tmp/import/Users.csv")
    columns = [:email, :username, :first_name, :last_name, :display_name, :dob, :start_date, :end_date, :mobile, :comments]
  User.import columns, users, validate: false
  end

  UsersClub.transaction do
    users_clubs = CSV.read("#{Rails.root}/tmp/import/UsersClubs.csv")
    columns = [:user_id, :club_id, :user_type_id, :start_date, :end_date, :comments]
  UsersClub.import columns, users_clubs, validate: false
  end

  UsersRole.transaction do
    users_roles = CSV.read("#{Rails.root}/tmp/import/UsersRoles.csv")
    columns = [:user_id, :role_id, :club_id, :comments]
  UsersRole.import columns, users_roles, validate: false
  end


end
