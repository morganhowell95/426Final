class UsersController < ApplicationController
  
  #user login page which dynamically loads up the js challenge framework
  def show
    if "#{params[:id]}" == "#{session[:user_id]}"
      @user = User.find(params[:id]) 
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def new
    @user = User.new
  end

  #create a new user using the ORM
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user #also written as redirect_to user_url(@user)
      flash[:success] = "Welcome #{@user.name}, you may start improving your JavaScript!"
    else
      render 'new'
    end
  end

  private

  #the following methods protect agaisnt cross site scripting attacks
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
