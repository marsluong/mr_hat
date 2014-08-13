#require '
#require 'mysql2'

class Student < ActiveRecord::Base

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
		  Student.create! row.to_hash
		end
	end

end
