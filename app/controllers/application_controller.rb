class ApplicationController < ActionController::Base
	protect_from_forgery

  	def current_user
       	if session[:user_id]
        # ||= assigns only if not already assigned (only calling db if necessary)
        @current_user ||= User.find(session[:user_id])
		end
    	@current_user
	end

	def logged_in?
    	# !! Ruby trick - double-negate current_user existence and return the boolean
       	!!current_user
	end

  def require_user
    redirect_to root_path unless logged_in?
  end

  def require_no_user
    #allows for pages to be viewed without logging in
  end

    def email_or_username?(content)
    # The first element in the array is the username, the 2nd element is the title of the link
    # All other elements will be ignored.
    if content =~ /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]+\z/i 
      return "email"
    else return "username"
    end
  end

  def does_username_exist?(username)
    @user = User.find_by_username(username)
    if @user
      return true
    else
      return false
    end
  end

  def does_email_exist?(email)
    logger.info(email)
    @user = User.find_by_email(email)
    if @user
      return true
    else
      return false
    end
  end


helper_method :current_user, :logged_in?, :require_user, :does_email_exist?, :does_username_exist?


end
