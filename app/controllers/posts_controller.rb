class PostsController < ApplicationController
	

	def index
		@post = Post.new
		@posts = Post.hash_tree
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = current_user.posts.build(parent_id: params[:parent_id])
	end

	def create
		if params[:post][:parent_id].to_i > 0
    		parent = Post.find_by_id(params[:post].delete(:parent_id))
    		@post = parent.children.build(post_params)
    	else
    		@post = current_user.posts.build(post_params)
    	end

		if @post.save
			flash[:success] = 'Your post was successfully added!'
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def post_params
		params.require(:post).permit(:content, :name)
	end

end
