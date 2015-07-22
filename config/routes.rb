Rails.application.routes.draw do
  
  resources :rsvp_statuses
  resources :rsvps
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    post :import, :controller => 'dashboard'
  end
  
  get 'tags/:tag', to: 'intern_summaries#index', as: :tag
  get 'winning_photos/:id/pick_winning_photo', to: 'winning_photos#pick_winning_photo', as: :pick_winning_photo
  
  get 'show_event_photos', to: 'events#show_event_photos', as: :show_event_photos
  get 'event_photos/:event_id' => 'events#event_photos', as: 'event_photos'
  get 'photo_challenge_gallery/:photo_challenge_id' => 'photo_challenges#photo_challenge_gallery', as: :photo_challenge_gallery

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => 'registration' }, :path_names => { :'sign_up.html.erb' => 'register'}
  resources :users, :only => [:index, :show, :edit, :update ]
  resources :users_admin, :controller => 'users'

  resources :intern_summaries
  resources :answers do
    post 'upvote'
    post 'downvote'
  end
  resources :faqs do
    post 'upvote'
    post 'downvote'
  end
  resources :comments
  resources :questions
  resources :ratings
  resources :faq_sections
  resources :event_dates
  resources :photos
  resources :winning_photos 
  resources :galleries
  resources :photo_challenges
  resources :years
  resources :events
  resources :managers
  resources :colleges
  resources :departments
  resources :majors
  
  #This will grab all of the methods found in StaitcPagesController
  #It wil then create a page route that matches that method name
  #Example: Method name = about route = localhost:3000/about or rails route call = about_path
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root :to => 'static_pages#home'
end
