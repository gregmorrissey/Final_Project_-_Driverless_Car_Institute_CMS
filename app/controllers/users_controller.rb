class UsersController < ApplicationController
before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.street_address = params[:street_address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip_code = params[:zip_code]
    @user.linkedin = params[:linkedin]
    @user.twitter = params[:twitter]
    @user.facebook = params[:facebook]
    @user.author = params[:author]
    @user.admin = params[:admin]

    if @user.save
      redirect_to users_url, notice: "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.street_address = params[:street_address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip_code = params[:zip_code]
    @user.linkedin = params[:linkedin]
    @user.twitter = params[:twitter]
    @user.facebook = params[:facebook]
    @user.author = params[:author]
    @user.admin = params[:admin]
    @user.bio = params[:bio]
    @user.photo = params[:photo]

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if current_user.id == @user.id || current_user.admin?
      @user.destroy

      redirect_to users_url, notice: "User deleted."
    else
      redirect_to home_url
    end
  end
end
