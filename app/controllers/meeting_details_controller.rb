class MeetingDetailsController < ApplicationController

  # acts_as_list :scope => :meeting_id
  layout 'bootstrap'

  def index
    ## Index is filtered down by clicking on Index link from meetings and focused just on a specific meeting.
    ## IF
    if
      params[:newrow].present?
      @meeting_id = params[:meeting_id]
      @new_meeting_entry = MeetingDetail.new(:meeting_id => @meeting_id, :role_id => '29', :user_id => '73', :meeting_detail_status_id => '4')
      @new_meeting_entry.save
      @meeting_details = MeetingDetail.joins(:meeting, :user, :role, :meeting_detail_status).where(:meeting_details => {:meeting_id => @meeting_id}).sort_order

      elsif
         params[:meeting_id].present?
        @meeting_id = params[:meeting_id]
        @meeting_details = MeetingDetail.joins(:meeting, :user, :role, :meeting_detail_status).where(:meeting_details => {:meeting_id => @meeting_id}).sort_order

      else
        @meeting_details = MeetingDetail.joins(:meeting, :user, :role, :meeting_detail_status).sorted
      end

    # Information below is for the PDF file generation.
    @meeting_id = params[:meeting_id]
    @meeting_details = MeetingDetail.joins(:meeting, :user, :role, :meeting_detail_status).where(:meeting_details => {:meeting_id => @meeting_id}).sort_order
    respond_to do |format|
      format.html
      format.pdf do
        pdf = MeetingDetailsPdf.new(@meeting_details, @meeting_id)
        send_data pdf.render, filename: "meetingdetails_#{@meeting_id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  def show
    @meeting_detail = MeetingDetail.find(params[:id])
  end


  def new
    @meeting_detail = MeetingDetail.new
  end

  def create
    @meeting_detail = MeetingDetail.new(user_params)
    if @meeting_detail.save
      flash[:notice] = "Meeting '#{@meeting_detail.id}' created successfully"
      redirect_to(meetings_path)
    else
      render('new')
    end
  end

  def edit
    @meeting_details = MeetingDetail.joins(:meeting, :user, :role, :meeting_detail_status).where(:meeting_details => {:meeting_id => '134'}).sort_order
  end

  def update
    @meeting_detail = MeetingDetail.find(params[:id])
    if @meeting_detail.update_attributes(user_params)
      flash[:notice] = "Meeting '#{@meeting_detail.id}' updated successfully"
      redirect_to(meeting_path(@meeting_detail))
    else
      render('edit')
    end
  end

  def delete
    @eeting_detail = MeetingDetail.find(params[:id])
  end

  def destroy
    @meeting_detail = MeetingDetail.find(params[:id])
    @meeting_detail.destroy
    flash[:notice] = "Meeting '#{@meeting_detail.id}' deleted successfully"
    redirect_to(meetings_path)
  end

  private
    def user_params
      params.require(:meeting_detail).permit(:meeting_type_id, :club_id, :meeting_id, :meeting_status_id, :location, :date, :theme, :address, :arrival_comments, :created_at, :updated_at)
    end


end
