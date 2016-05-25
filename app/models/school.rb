class School < ActiveRecord::Base
	#dependent destroy will delete all the record that are associated
	#in the has/-many association---this is best practice
	has_many :classrooms, dependent: :destroy
	has_one :address, dependent: :destroy

	#validations go here
	#second line of defense for bad data--the first is the database contraint in the moigrate folder
	validates_presence_of :name
	#callbacks go here

	#you wont use these often- they are for more complicated situations

end
