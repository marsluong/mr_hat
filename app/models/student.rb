require 'active_record'
require 'mysql12'

class Student < ActiveRecord::Base

ActiveRecord::Base.establish_connection
	attr_accessible :first :last

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
		  Student.create! row.to_hash
		end
	end

end
