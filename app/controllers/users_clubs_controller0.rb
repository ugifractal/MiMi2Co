class UsersClubsController < ApplicationController

  layout 'bootstrap'

  before_action :find_club

  def index
    @users_clubs = UsersClub.joins(:club, :user, :user_type).all

  end

  def show
    @users_club = UsersClub.joins(:club, :user, :user_type).find(params[:id])
  end

  def new
    @users_club = UsersClub.new
  end

  def create
    @users_club = UsersClub.new(user_params)
    if @users_club.save
      flash[:notice] = "UsersClub '#{@users_club.user_id}' created successfully"
      redirect_to(users_clubs_path)
    else
      render('new')
    end
  end

  def edit
    @users_club = UsersClub.find(params[:id])
  end

  def update
    @users_club = UsersClub.find(params[:id])
    if @users_club.update_attributes(user_params)
      flash[:notice] = "UsersClub '#{@users_club.user_id}' updated successfully"
      redirect_to(users_club_path(@users_club))
    else
      render('edit')
    end
  end

  def delete
    @users_club = UsersClub.find(params[:id])
  end


  def destroy
    @users_club = UsersClub.find(params[:id])
    @users_club.destroy
    flash[:notice] = "UsersClub '#{@users_club.user_id}' deleted successfully"
    redirect_to(users_clubs_path)
  end

  private
    def user_params
      params.require(:users_club).permit(:user_id, :club_id, :user_type_id, :start_date, :end_date, :comments, :created_at, :updated_at)
    end

  def find_club
    @club = Club.find(params[:club_id])
  end

end
