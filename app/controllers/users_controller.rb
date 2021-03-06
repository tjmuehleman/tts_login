class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :blogs]


  # add new field to User resource
  # called phone number

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    num_users = @users.length

    if num_users > 50
      @some_text = "hi guys! we have lots of users! we have #{num_users}"
    else
      @some_text = "bummer. only #{num_users} user"
    end
    

  end

  # GET /users/1
  # GET /users/1.json
  def show
    @projects = @user.projects

  end

  # GET /users/1/blogs
  def blogs

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    # update phone
    @user.phone = number_to_phone(:phone)

    @user.save

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      #@user_id = params[:id]

      @user = User.find(params[:id])


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :bio, :first_name, :last_name)
    end
end
