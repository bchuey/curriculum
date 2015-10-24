class VotesController < ApplicationController
  def create

  	Vote.create(user_id: session[:user_id], post_id: params[:post_id])

  	post = Post.find(params[:post_id])
  	if post.vote_count == 0
  		post.update_columns(:vote_count => 1)
  	else
  		count = post.vote_count
  		count += 1
  		post.update_columns(:vote_count => count)
  	end
  end
end
