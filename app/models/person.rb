class Person < ActiveRecord::Base
	def name
		name = first_name
		name += " " unless first_name.nil? and last_name.nil?
		name += last_name unless last_name.nil?
	end
end
