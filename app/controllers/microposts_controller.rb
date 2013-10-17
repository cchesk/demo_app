class MicropostsController < ApplicationController
  # before_action :set_micropost, only: [:show, :edit, :update, :destroy]
  # before_action :user_exists, only: [:create]

  def index
    respond_to do |format|
      format.html { redirect_to User.find(params[:user_id]) }
      format.json { render json: User.find(params[:user_id]).microposts.all }
    end
  end

  # def show
  #   redirect_to User.find(params[:user_id])
  # end

  def create
    @user = User.find(params[:user_id])
    @micropost = @user.microposts.create(micropost_params)
    # redirect_to @user

    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def micropost_params
    params.require(:micropost).permit(:content)
  end
end
