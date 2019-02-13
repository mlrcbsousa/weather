# frozen_string_literal: true

class ApiController < ApplicationController
  # include Knock::Authenticable
  # attr_reader :current_user

  # avoids repeated requests to the server
  skip_before_action :verify_authenticity_token

  # before_action :authenticate_token!
  before_action :authenticate_user!
  before_action :set_default_format

  private

  def set_default_format
    request.format = :json
  end

  # def authenticate_token!
  #   payload = JsonWebToken.decode(auth_token)
  #   @current_user = User.find(payload['sub'])
  #   p @current_user
  # rescue JWT::ExpiredSignature
  #   render json: { errors: ['Auth token has expired'] }, status: :unauthorized
  # rescue JWT::DecodeError
  #   render json: { errors: ['Invalid auth token'] }, status: :unauthorized
  # end

  # def auth_token
  #   @auth_token ||= request.headers.fetch('Authorization', '').split(' ').last
  # end
end
