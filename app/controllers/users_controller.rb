class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users 
    end

    def show 
        user = User.find(params[:id])
        render json: user, :include => :restrooms
    end

    def new 
        user = User.new 
        render json: user
    end

    def create 
      user = User.create(user_params)
    
        if user.valid?
            # session[:user_id] = user.id 
            render json: { token: encode_token(user), user: user }
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def profile
        render json: logged_in
    end

    def edit
        user = User.find(params[:id])
        render json: user 
    end

    def update
        user = User.find(params[:id])
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy 
        render json: user
    end

    def profile
    # byebug
        render json: {user: UserSerializer.new(super_current_user)}
    end

    private 

    def user_params
        params.require(:user).permit(:username, :age, :password)
    end

end
