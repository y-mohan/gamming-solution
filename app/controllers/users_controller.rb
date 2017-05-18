class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:sign_in, :signup, :new, :create, :facebook, :forget_password, :recover_password]
   include MoveFromSessionToCart
  def index
  	@users =  User.all
   # authorize! :manage, @users
  end

  def new
  	@user = User.new
    @user.build_image
  end
  def create 
  	@user = User.new(user_params)
  	if @user.save(validate: false)
       #SendEmailMailer.welcome(@user).deliver_now!
       redirect_to users_path
   else
   	render :new
  	end
  end
  def facebook
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to products_path

  end
  def edit
    @user = User.find params[:id]
  end
  def update
     @user = User.find params[:id]
    # authorize! :update, @user
    if @user.update(user_params)
       redirect_to users_path
       else
       render :edit 
    end
    
  end 
  def show
    @user = User.find params[:id]
  end
  def destroy 
     @user = User.find params[:id]
     @user.destroy
     redirect_to users_path
  end
  def signup
      @user = User.authenticate(params[:email], params[:password])
      if @user
          session[:user_id] = @user.id
          add_items_to_cart(@user)
          flash[:notice] = "Successfully logged in!"
          #redirect_to user_path(@user)
          redirect_to products_path
        else
          flash[:notice] = "Either email or password is wrong!"
          redirect_to sign_in_users_path
      end
  end
  def logout
    session[:user_id] = nil
    redirect_to sign_in_users_path
  end
  def recover_password
    @user = User.where(email: params[:email]).last
    if @user
        @user.update({password: params[:password], confirm_password: params[:confirm_password]})
        flash[:notice] = "New password has been set Successfully, ty login!"
         redirect_to root_path
       else
        flash[:notice] = "User not found with given email id"
        redirect_to root_path
    end
  end
  private 
  def user_params
    params.require(:user).permit!
  end
end
