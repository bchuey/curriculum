class PostsController < ApplicationController

  def new

    render "/posts/new"
  end

  def get_grade_id

    session[:grade_id] = 

  end

  def get_category_id

    session[:category_id] = 

  end

  def get_subject_id

    session[:subject_id] = 

  end

  def get_lesson_id

    session[:lesson_id] = 

  end

  def create

    Post.create(content: params[:content], user_id: User.find(session[:user_id]), grade_id: Grade.find(session[:grade_id]), category_id: Category.find(session[:category_id]), subject_id: Subject.find(session[:subject_id]), lesson_id: Lesson.find(session[:lesson_id]), vote_count: 0)

    render '/posts/show'
  end

  def show

  end

end
