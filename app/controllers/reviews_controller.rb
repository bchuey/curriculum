class ReviewsController < ApplicationController
  def create
  	@review = Review.create(comment: params[:comment], rating: params[:rating], user: User.find(params[:user_id]), post: Post.find(params[:post_id]))

  	

  	redirect_to "/posts/#{params[:post_id]}"
  end

  def edit
  end

  def update
  end

  def delete
  end
end
