class Post < ActiveRecord::Base
	belongs_to :user
	acts_as_tree order: 'created_at DESC', dependent: :delete_all
	
end
