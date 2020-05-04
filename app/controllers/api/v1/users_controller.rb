class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create 
    # byebug
    user = User.create(user_params)
    if user.valid?
      @token = issue_token(user)
      render json: { user: UserSerializer.new(user), jwt: @token }, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :not_acceptable
    end
end
  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :email, :password )
    end
end
