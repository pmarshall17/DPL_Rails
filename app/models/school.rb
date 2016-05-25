class School < ActiveRecord::Base
	#dependent destroy will delete all the record that are associated
	#in the has/-many association---this is best practice
	has_many :classrooms, dependent: :destroy
	has_one :address, dependent: :destroy
end
