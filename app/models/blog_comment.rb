class BlogComment < ActiveRecord::Base
	belongs_to :blog_entries
	belongs_to :users
end
