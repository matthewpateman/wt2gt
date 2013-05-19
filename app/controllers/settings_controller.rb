class SettingsController < ApplicationController

	def index
		redirect_to :action => "profile"
	end

  	def profile

  		@user = User.find(:first, :conditions => [ "id = :u", { :u => 1 }])
   		
		@username = params[:username]
		@first_name = params[:first_name]
		@last_name = params[:first_name]
		@email = params[:email]
		@mobile_phone = params[:mobile_phone]

		if !@username.blank? || !@email.blank? then
				
			@user.username = @username
			@user.email = @email
			@user.first_name = @first_name
			@user.last_name = @last_name
			@user.mobile_phone = @mobile_phone
			@user.save
			flash.now[:notice] = "You're account settings have successfully been updated."
        	render :action => :profile
        end


  end

  def shipping

  	  	@user = User.find(:first, :conditions => [ "id = :u", { :u => 1 }])
   		

		@address_street_one = params[:address_street_one]
		@address_street_two = params[:address_street_two]
		@address_street_three = params[:address_street_three]
		@address_city = params[:address_city]
		@address_state = params[:address_state]
		@address_postcode = params[:address_postcode]
		@address_country = params[:address_country]


		if !@address_street_one.blank? || !@address_city.blank? || !@address_postcode.blank? || !@address_country.blank? then
				
			@user.address_street_one = @address_street_one
			@user.address_street_two = @address_street_two
			@user.address_street_three = @address_street_three
			@user.address_city = @address_city
			@user.address_state = @address_state
			@user.address_postcode = @address_postcode
			@user.address_country = @address_country
			@user.save
			flash.now[:notice] = "You're shipping details have successfully been updated."
        	render :action => :shipping
        end

  end

  def payment
  end

  def networks
  end
end
