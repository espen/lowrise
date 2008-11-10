class Person < ActiveRecord::Base
  belongs_to :company
  has_many :notes
  has_many :phone_numbers
      
	def name
		name = first_name
		name += " " unless first_name.nil? and last_name.nil?
		name += last_name unless last_name.nil?
	end
	
	def company_name
	  company.name if company
	end
	
	def company_name=(name)
    self.company = Company.find_or_create_by_name(name) unless name.blank?
  end
end
