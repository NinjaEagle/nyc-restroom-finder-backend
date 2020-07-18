class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :require_login

  skip_before_action :verify_authenticity_token

  def encode_token(user)
    payload = {user_id: user.id}
    JWT.encode(payload, secret, 'HS256')
  end

  def authorized?(user_id)
    token = try_get_jwt_token
    return token.present? && token["user_id"] == user_id.to_i
  end

  def secret
    Rails.application.credentials.jwt_secret
  end

  # frontend
  def auth_response_json(user)
    {token: encode_token(user.id), username: user.username, user_id:user_id, name: user.name}
  end

  def user_who_is_logged_in
    if authenticated?
      user_id = try_get_jwt_token["user_id"]
      User.find(user_id)
    end
  end

  def authenticated?
    try_get_jwt_token.present?
  end

  def tell_user_to_go_away!
    render :json => {go_away: true}, :status => unauthorized
  end

  private

  def decoded_token(token_string)
    JWT.decode(token_string, secret, true, { algorithm: 'HS256' })
  end

  def try_get_jwt_token
    token_string = request.headers["Authorization"]
    if token_string.present?
      begin
        decoded_token = decode_token(token_string)
      rescue JWT::VerificationError
        return nil
      end
      return decode_token.first
    else
      nil
    end
  end
  # def super_current_user
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
