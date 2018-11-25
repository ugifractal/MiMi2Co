class UsersController < ApplicationController


  layout 'bootstrap'

  def index
    @users = User.sorted

  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User '#{@user.display_name}' created successfully"
      redirect_to(users_path)
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "User '#{@user.display_name}' updated successfully"
      redirect_to(user_path(@user))
    else
      render('edit')
    end
  end

  def delete
    @user = User.find(params[:id])
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.display_name}' deleted successfully"
    redirect_to(users_path)
  end



  private
    def user_params
      params.require(:user).permit(:email, :password_digest, :username, :first_name, :last_name, :display_name, :dob, :start_date, :end_date, :mobile, :comments, :created_at, :updated_at)
    end


end
