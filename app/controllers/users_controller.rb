class UsersController < ApplicationController

  # overriding default url for I18n
  def default_url_options(options={})
    { :locale => I18n.locale }
  end

  # GET /users
  # GET /users.json
  def index
    @users = AdminUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = AdminUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

end
