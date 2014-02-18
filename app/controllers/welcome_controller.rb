class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def login
  	@user = User.new
  end

  def login_user

  end
end
