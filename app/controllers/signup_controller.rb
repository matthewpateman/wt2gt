class SignupController < ApplicationController
  def index
  end

  def step1
    
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]

    if !@first_name.blank? || !@last_name.blank? || !@email.blank? then
      logger.info('******** NO FIELDS BLANK ********')  
    else
     @incomplete = 1
    end

  end

  def step2
    @username = params[:username]
    @email = params[:email]
    @password = params[:password]
    @password_confirmation = params[:password_confirmation] 
    @first_name = params[:first_name]
    @last_name = params[:last_name]

    if !@username.blank? || !@email.blank? || !@password.blank? || !@password_confirmation.blank? then
    logger.info('******** NO FIELDS BLANK ********')  
      if @password == @password_confirmation then 
        logger.info('******** PASSWORDS MATCH ********')
        @user = User.new do |u|
          u.first_name = @first_name
          u.last_name = @last_name
          u.email = @email
          u.username = @username
          u.password = @password
          logger.info('******** USER CREATED ********')
        end 
        @user.save
        logger.info('******** USER SAVED ********')
        #Logging in user
        logging_in_user = User.find_by_username(@username)
        redirect_to :action => "step3"
      end
    end

  end

  def step3
  end

  def step4
    redirect_to items_path    
  end

end
