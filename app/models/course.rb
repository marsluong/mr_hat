class Course < ActiveRecord::Base
	def empty_course?
		@avail_courses = Courses.find_by email: @user.email	
	end
end
