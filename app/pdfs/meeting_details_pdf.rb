class MeetingDetailsPdf < Prawn::Document

    require "prawn/measurement_extensions"

  def initialize(meeting_details, meeting_id)
    super()
    @meeting_id = meeting_id
    @meeting_details = meeting_details

   user_id
  end

  def user_id
    table user_id_all do
      row(0).font_style = :bold
      columns(1..4).align = :left
      self.row_colors = ["DDDDDD","FFFFFF"]
      self.header = true
    end
  end

  def user_id_all
    [["1","2","3","4","5"]] +
    @meeting_details.map do |h|
      [
        h.id,
        h.role.name,
        h.user.display_name,
        h.duration_from,
        h.comments
      ]
    end
  end

end
