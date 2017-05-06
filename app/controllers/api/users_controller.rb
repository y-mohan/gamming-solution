class Api::UsersController < ApplicationController
	def index
       @users = User.all
       respond_to do | format |
        format.json {render json: @users}
       end
	end
	def create
      @user = User.new(user_params)
      respond_to do | format |
        if @user.save
           format.json {render json: @user}
       else
       	   format.json {render json: @user.errors}
        end
      end
	end

  def destroy 
     @user = User.find params[:id]
     respond_to do | format |
     @user.destroy 
    format.json {render json: "Deleted successfully\n"}
    end
     # redirect_to users_path
  
     end
end
#def edit
 #   @user = User.find params[:id]
  # format.json {render json: @user}
  #end
#end

  def update
    @user = User.find params[:id]
    respond_to do | format |
    if @user.update(user_params)
      format.json {render json: "updated sucessfully \n"}
       #redirect_to users_path
       else
       render :edit
       format.json {render json: @user} 
    end
  end 
end
	         private
           	def user_params
		       params.require(:user).permit!
	        end
end


#what is params .
# a strong hash in rails created 
#from HashWithIndifferentAccess class , which stores 
#all the data's in key and value pair. 
# params = {user: 
# 	{name: "ABC", email: "abc@gmail.com"}, 
# 	extra_columns_will_be_there: 'value', permitted: false
# }


# params.require(:user).permit!

