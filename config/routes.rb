Rails.application.routes.draw do

  ### Subjects ###

  get 'subjects/show/:id' => 'subject#show'

  ### Posts <=> Curriculums ###

  get 'posts/index'

  get 'posts/new' => 'posts#new'

  post 'posts/create'

  get 'posts/show'

  get 'posts/edit'

  patch 'posts/update'

  delete 'posts/destroy'

  ### Documents ###

  patch 'documents/create'

  delete 'documents/delete'

  ### Votes ###

  post 'votes/create'

  ### Reviews ###

  post 'reviews/create'

  get 'reviews/edit'

  patch 'reviews/update'

  delete 'reviews/delete'

  ### Sessions ###

  get 'sessions/new'

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
