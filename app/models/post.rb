class Post < ActiveRecord::Base
	acts_as_tree order: 'created_at DESC'
end
