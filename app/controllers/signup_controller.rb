class SignupController < ApplicationController
  def index

  end

  def step1
    
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @username = params[:username]
    @password = params[:password]
    @password_confirmation = params[:password_confirmation]


    if @email.blank? || @first_name.blank?  || @last_name.blank? then
      logger.info('***** Some fields missing *****')
      @incomplete = 1
    else
      logger.info('***** All info there *****')
      @incomplete = 0

      if @username.blank? || @password.blank?   || @password_confirmation.blank?       
        logger.info('******** A FEW FIELDS BLANK ********')   
      else
        logger.info('******** NO FIELDS MISSING ********') 
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
          session[:user_id] = logging_in_user.id
          redirect_to :action => "step2"


        end
      end
    
  end

  def step2
  end


  end

  def step3
  end

  def step4
    redirect_to items_path    
  end

end
