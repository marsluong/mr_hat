module UsersHelper

	# Returns the Gravatar for user
	def gravatar_for(user, options = {size: 50})
		 gravatar_id = Digest::MD5::hexdigest(user.email.to_s.downcase)
		 size = options[:size]
		 gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		 image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

	def empty_course? (user)
		@avail_courses = Course.where(:all, :conditions => ["email = ?",user.email])		
		!@avail_courses.nil?
	end

end
