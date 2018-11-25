class MeetingDetailsPdf < Prawn::Document

    require "prawn/measurement_extensions"

  def initialize(meeting_details, meeting_id)
    super()
    @meeting_id = meeting_id
    @meeting_details = meeting_details

    stroke_axis
    # line_to and curve_to
    stroke do
     move_to 0, 0
     line_to 100, 100
     line_to 0, 100
     curve_to [150, 250], :bounds => [[20, 200], [120, 200]]
     curve_to [200, 0], :bounds => [[150, 200], [450, 10]]
    end
    # line and curve
    stroke do
     line [300, 200], [400, 50]
     curve [500, 0], [400, 200], :bounds => [[600, 300], [300, 390]]
    end

  #  user_id
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
