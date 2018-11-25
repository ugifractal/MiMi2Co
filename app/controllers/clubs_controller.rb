class ClubsController < ApplicationController

  layout 'bootstrap'
  # before_action :confirm_logged_in

  def index
    @clubs = Club.sorted
    @users = UsersClub
  end

  def show
    @club = Club.find(params[:id])
    @users = User.joins(:clubs).where(:users_clubs => {:club_id => 1, :user_type_id => 1})
  end

  def new
    @club = Club.new({:display_name => 'Default'})
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      flash[:notice] = "Club '#{@club.name}' created successfully"
      redirect_to(clubs_path)
    else
      render('new')
    end
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    if @club.update_attributes(club_params)
      flash[:notice] = "Club '#{@club.name}' updated successfully"
      redirect_to(club_path(@club))
    else
      render('edit')
    end
  end

  def delete
    @club = Club.find(params[:id])
  end

  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    flash[:notice] = "Club '#{@club.name}' deleted successfully"
    redirect_to(clubs_path)
  end

  private
    def club_params
      params.require(:club).permit(:name, :description, :city, :country, :club_type_id, :start_date, :end_date, :address, :district, :division, :area, :registration_number, :website, :email, :mission, :facebook, :display_name, :logo, :created_at, :updated_at)
    end

end
