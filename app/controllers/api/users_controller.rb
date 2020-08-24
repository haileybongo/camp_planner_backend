class Api::UsersController < ApplicationController


    def create
        if params[:user][:password] == params[:user][:password_confirmation]
            @user = User.create(user_params)
            if @user.valid? 
                @user.save
                session[:user_id] = @user.id
                render json: {user: UserSerializer.new(@user)}, status: :created
            else
                render json: {error: @user.errors.full_messages}, status: :not_acceptable
            end
        else
            render json: { error: "Passwords do not match. Please try again." }, status: :not_acceptable
        end
    end


   
    private
   
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
