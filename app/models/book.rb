class Book < ActiveRecord::Base
	validates :name,presence:true
	validates :author,presence:true
	validates :name,uniqueness:true
	validates :name,length:{minimum:2}
	
	self.per_page = 5
	
	before_save :merge_the_names
	after_destroy :display_log
	
	def merge_the_names
		self.name = self.name+ " by " + self.author
	end	
	def display_log
		logger.error "---------------Books has been deleted--------"
	end	
end
