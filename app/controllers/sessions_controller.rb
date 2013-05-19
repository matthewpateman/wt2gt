class SessionsController < ApplicationController

  def index
    if logged_in?
      redirect_to :controller=>'items', :action => 'index'
    else
      redirect_to :controller=>'sessions', :action => 'new'
    end
  end

  def new
    if logged_in?
    redirect_to :controller=>'items', :action => 'index'
    end
  end

  def create

    @email_or_username = params[:email_or_username] 
    logger.info("Before Check **************")
    @check = email_or_username?(@email_or_username)
    logger.info(@check + "**************")
    if @check == "username"
      if user = User.find_by_username(@email_or_username).try(:authenticate, params[:password])
		    session[:user_id] = user.id
        redirect_to items_path
      else
        flash.now[:notice] = "Username and password didn't match."
        render 'new'
		  end
    elsif @check = "email"
      if user = User.find_by_email(@email_or_username).try(:authenticate, params[:password])
        session[:user_id] = user.id
        redirect_to items_path
      else
        flash.now[:notice] = "Username and password didn't match."
        render 'new'
      end
    end
	end

  def destroy
    reset_session
    redirect_to root_path
	end

end
