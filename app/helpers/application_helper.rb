module ApplicationHelper

	 def link_to_profile(*array)

		# The first element in the array is the username, the 2nd element is the title of the link
		# All other elements will be ignored.

		if array[1] == nil 
			value = "Show"
		else 
			value = array[1]
		end

		@url = '<a href="' + root_path + array[0] + '">' + value + '</a>'
		return @url.html_safe
	end


end
