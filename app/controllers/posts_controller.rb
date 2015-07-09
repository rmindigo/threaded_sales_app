class PostsController < ApplicationController
	

	def index
		@post = Post.new
		@posts = Post.all.order("created_at DESC")
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
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
		params.require(:post).permit(:content)
	end

end
