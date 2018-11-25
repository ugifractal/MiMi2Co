class ClubTypeController < ApplicationController

  layout 'bootstrap'
  # before_action :confirm_logged_in


  def index
    @club_types = ClubType.sorted
  end

  def show
    @club_type = ClubType.find(params[:id])
  end

  def new
    @club_type = ClubType.new({:display_name => 'Default'})
  end

  def create
    #ClubType.create(params[:club_type])
    @club_type = ClubType.new(club_type_params)
    if @club_type.save
      flash[:notice] = "ClubType '#{@club_type.email}' created successfully"
      redirect_to(club_types_path)
    else
      render('new')
    end
  end

  def edit
    @club_type = ClubType.find(params[:id])
  end

  def update
    @club_type = ClubType.find(params[:id])
    if @club_type.update_attributes(club_type_params)
      flash[:notice] = "ClubType '#{@club_type.email}' updated successfully"
      redirect_to(club_type_path(@club_type))
    else
      render('edit')
    end
  end

  def delete
    @club_type = ClubType.find(params[:id])
  end

  def destroy
    @club_type = ClubType.find(params[:id])
    @club_type.destroy
    flash[:notice] = "ClubType '#{@club_type.email}' deleted successfully"
    redirect_to(club_types_path)
  end


  private
  def club_type_params
    params.require(:club_type).permit(:email, :first_name, :last_name, :display_name, :dob, :start_date, :end_date, :club_type_id, :mobile, :comments, :created_at, :updated_at)
  end


end
