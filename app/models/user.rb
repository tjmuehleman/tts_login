class User < ActiveRecord::Base
	has_many :projects
	has_many :blogs
	has_many :blog_comments

	validates :phone, presence: true

	def full_name
		"#{first_name} #{last_name}"
	end

	def age
		current_date - date_of_birth
	end
end
