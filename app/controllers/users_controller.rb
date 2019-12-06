class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users 
    end

    def show 
        user_id = params[:id]
        if authorized?(user_id) #application_controller
            user = User.find(params[:clickedUser])
            render json: user, include: [:restrooms]
        else
            tell_user_to_go_away!
        end
    end

    def new 
        user = User.new 
        render json: user
    end

    # def create 
    #   user = User.create(user_params)
    #     if user.valid?
    #         # session[:user_id] = user.id 
    #         render json: auth_response_json(user)
    #         # application controller
    #     else
    #         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    #     end
    # end

    def profile
        render json: logged_in
    end

    def update
        user = User.find(params[:id])
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy()
    end

    def profile
        render json: {user: UserSerializer.new(super_current_user)}
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end

end

