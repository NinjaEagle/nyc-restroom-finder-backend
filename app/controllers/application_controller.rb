class ApplicationController < ActionController::Base
  # def encode_token(user)
  #   payload = {user_id: user.id}
  #   JWT.encode(payload, secret, 'HS256')
  
  # end

  # def secret
  #   Rails.application.credentials.jwt_secret
  # end

  # def token
  #   request.headers["Authorization"]
  # end

  # def decoded_token
  #   JWT.decode(token, secret, true, { algorithm: 'HS256' })
  # end

  # def current_user
  #   user_id = decoded_token[0]["user_id"]
  #   user = User.find(user_id)
  # end

  # def logged_in?
  #   !!super_current_user
  # end

  # def authorized
  #   render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  # end
end
