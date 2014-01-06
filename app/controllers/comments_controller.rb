class CommentsController < ApplicationController

	def new
		@comment = Comment.new
		@this_post_id = params[:this_post_id]
		#@comment.post_id = params[:this_post_id]
		puts @this_post_id
		puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
	end

	def create
	  @comment = Comment.new(params[:comment])
 	
	  if @comment.save
	    redirect_to posts_path
	  else
	    render 'new'
	  end
	end

	def destroy
	  @post = Post.find(params[:post_id])
	  @comment = @post.comments.find(params[:id])
	  @comment.destroy
	  redirect_to post_path(@post)
	end

end
