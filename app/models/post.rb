class Post < ActiveRecord::Base
	belongs_to :user
	acts_as_tree order: 'created_at DESC'
	
end
