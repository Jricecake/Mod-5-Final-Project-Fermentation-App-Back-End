class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by(username: user_login_params[:username])
    @projects = Project.where(user_id: user.id)
    # byebug
    if user && user.authenticate(user_login_params[:password])
        token = issue_token(user)

        render json: {user: UserSerializer.new(user), jwt: token, projects: ActiveModel::Serializer::CollectionSerializer.new(@projects, each_serializer: ProjectSerializer)}
        
      else
        render json: {error: 'That user could not be found'}, status: 401
      end
    end
  
    def show
      user = User.find_by(id: user_id)
      if logged_in?
        render json: { user: UserSerializer.new(user) }
      else
        render json: {error: 'No user could be found'}, status: 401
      end
    end

    def user_login_params
      params.require(:user).permit(:username, :password)
    end
end