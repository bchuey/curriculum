Rails.application.routes.draw do

  post 'versions' => 'versions#create'

  ### Subjects ###

  get 'subjects/show/:id' => 'subjects#show'


  ### Posts <=> Curriculums ###

  get 'posts/new' => 'posts#new'
  post 'posts/send_grade' => 'posts#send_grade'

  get 'posts/category_form' => 'posts#category_question'
  post 'posts/send_category' => 'posts#send_category'

  get 'posts/subject_form' => 'posts#subject_question'
  post 'posts/send_subject' => 'posts#send_subject'

  get 'posts/lesson_form' => 'posts#lesson_question'
  post 'posts/send_lesson' => 'posts#send_lesson'

  get 'posts/upload_lesson' => 'posts#upload_lesson'

  patch 'posts/update'
  delete 'posts/destroy'
  post 'posts/create_lesson' => 'posts#create'
  get 'posts/:id' => 'posts#show_single_post'

  get 'posts/new_version' => 'posts#new_version'
  post 'posts/create_versioned_lesson' => 'posts#create_versioned_lessons'
  ### Documents ###

  patch 'documents/create'

  delete 'documents/delete'

  ### Votes ###

  post 'votes' => 'votes#create'

  ### Reviews ###

  post 'reviews' => 'reviews#create'
  get 'reviews/edit'
  patch 'reviews/update'
  delete 'reviews/delete'

  ### Sessions ###

  get 'sessions/new' => 'sessions#new'

  post 'sessions' => 'sessions#create'

  delete 'sessions' => 'sessions#destroy'

  ### Users ###

  get 'users/new' => 'users#new'

  post 'users/create' => 'users#create'

  get 'users/edit'

  get 'users/:id' => 'users#show'

  patch 'users/update'

  delete 'users/delete'


end
