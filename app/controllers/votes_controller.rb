class VotesController < ApplicationController
  def create
    if current_user.votes.where(post: Post.find(params[:post_id])).empty?
    	Vote.create(user: User.find(params[:user_id]), post: Post.find(params[:post_id]))
      post = Post.find(params[:post_id])
      if post.vote_count == 0
        post.update_columns(:vote_count => 1)
      else
        count = post.vote_count
        count += 1
        post.update_columns(:vote_count => count)
      end
  	end

    redirect_to "/posts/#{post.id}"
  end
end
