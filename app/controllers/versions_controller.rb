class VersionsController < ApplicationController
  def create
    post = Post.find(params[:post_id])

    if Post.find(params[:post_id]).versions.empty?
      Version.create(post_id: Post.find(params[:post_id]), original_owner: User.find(params[:original_owner]), version_number: 1)

  	else
  		version_number = Post.find(params[:post_id]).versions.last.version_number
  		version_number += 1
  	end

  	Version.create(post_id: Post.find(params[:post_id]), original_owner: User.find(params[:original_owner]), version_number: version_number)

    session[:version] = post
    # puts session[:version].inspect

  	render '/posts/new_version'
  end
end
