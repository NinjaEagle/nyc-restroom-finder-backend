class UsersController < ApplicationController
    skip_before_action :authorized, only: :create
    def index 
        @users = User.all 
        render json: @users 
    end

    def show
        user_id = params[:id]
        if authorized?(user_id) #application_controller
            # user = User.find(params[:clickedUser])
            @user = User.find(user_id)
            render json: @user, include: "**"
        else
            tell_user_to_go_away!
        end
    end

    # def new 
    #     user = User.new 
    #     render json: user
    # end

    def create 
      @user = User.create(user_params)
        if @user.valid?
            # session[:user_id] = user.id 
            render json: auth_response_json(@user)
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def profile
        render json: logged_in
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json:user, include: '**'
        else
            render json: {errors:@user.errors.full_messages }, status: :unprocessable_entity}
    end

    def destroy
        user = User.find_by(username:user_atm)
        if user.destroy
            render json: {success: 'User Deleted Successfully'}
        else
            render json: {error: 'Delete failed'}
        end
    end

    # def profile
    #     render json: {user: UserSerializer.new(super_current_user)}
    # end
    def profile
        user = User.find_by(username: user_atm)
        render json: user, include: '**'
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end
