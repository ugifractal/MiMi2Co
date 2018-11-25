class MeetingsController < ApplicationController

  layout 'bootstrap'

  def index
    @meetings = Meeting.joins(:club, :meeting_type, :meeting_status).newest_first1

  end

  def show
    @meeting = Meeting.joins(:club, :meeting_type, :meeting_status).find(params[:id])
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(user_params)
    if @meeting.save
      flash[:notice] = "Meeting '#{@meeting.theme}' created successfully"
      redirect_to(meetings_path)
    else
      render('new')
    end
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])
    if @meeting.update_attributes(user_params)
      flash[:notice] = "Meeting '#{@meeting.theme}' updated successfully"
      redirect_to(meeting_path(@meeting))
    else
      render('edit')
    end
  end

  def delete
    @meeting = Meeting.find(params[:id])
  end


  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    flash[:notice] = "Meeting '#{@meeting.theme}' deleted successfully"
    redirect_to(meetings_path)
  end

  private
    def user_params
      params.require(:meeting).permit(:meeting_type_id, :club_id, :meeting_status_id, :location, :date, :theme, :address, :arrival_comments, :created_at, :updated_at)
    end


end
