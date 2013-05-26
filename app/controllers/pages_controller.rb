class PagesController < ApplicationController
  def about
  end

  def blog
  end

  	def login
  		@previous_name = cookies[:stored_name]
		@name = params[:input_name]
		cookies[:stored_name] = @name
	end
	
end
