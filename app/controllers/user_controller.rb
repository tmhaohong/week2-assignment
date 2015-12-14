class UserController < ApplicationController
  def show
    if isSignedIn?
      landingPage
    end
  end

  def signup
  	@user = User.new(params[:user].permit(:name, :email, :password, :avatar))
    if (@user.save)
      flash[:success] = "Your account is created, please login!"
    	redirect_to login_path
  	else
  		flash[:error] = "There are some errors, please try again"
      render "show"
    end
  end

end
