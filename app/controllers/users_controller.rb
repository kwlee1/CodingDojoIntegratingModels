class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def new
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
  end

  def create
    user = User.create(name:params[:name])
    id = user.id 
    redirect_to "/users"
  end

  def total
    @total = User.all.count 
  end
end
