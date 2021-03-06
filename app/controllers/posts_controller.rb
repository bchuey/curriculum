class PostsController < ApplicationController

  def new
    @grades = Grade.all

    render "/posts/new"
  end

  def send_grade

    session[:grade_id] = params[:question] 
    @grade_id = session[:grade_id]

    redirect_to "/posts/category_form"
  end

  def category_question
    @grades = Grade.all
    @grade_id = session[:grade_id]

    render "/posts/category_question"
  end


  def send_category

    session[:category_id] = params[:question]
    @category_id = session[:category_id]
    puts @category_id

    redirect_to "/posts/subject_form"

  end

  def subject_question
    @grades = Grade.all
    @grade_id = session[:grade_id]
    @category_id = session[:category_id]

    render "/posts/subject_question"

  end


  def send_subject

    session[:subject_id] = params[:question]
    @subject_id = session[:subject_id]

    redirect_to "/posts/lesson_form"

  end


  def lesson_question
    @grades = Grade.all
    @grade_id = session[:grade_id]
    @category_id = session[:category_id]
    @subject_id = session[:subject_id]

    render "/posts/lesson_question"

  end


  def send_lesson

    session[:lesson_id] = params[:question]
    @lesson_id = session[:lesson_id]

    redirect_to "/posts/upload_lesson"
  end

  def upload_lesson
    @grade = Grade.find(session[:grade_id])
    @category = Category.find(session[:category_id])
    @subject = Subject.find(session[:subject_id])
    @lesson = Lesson.find(session[:lesson_id])

    render "/posts/upload"
  end

  def create

    @post = Post.create(content: params[:content], user: User.find(session[:user_id]), grade: Grade.find(session[:grade_id]), category: Category.find(session[:category_id]), subject: Subject.find(session[:subject_id]), lesson: Lesson.find(session[:lesson_id]), vote_count: 0)

    redirect_to "/posts/#{@post.id}"
  end

  def show_single_post
    @post = Post.find(params[:id])
    @reviews = Review.where(post: Post.find(params[:id]))
    
  end

  private

  def post_params

    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)

  end

end
