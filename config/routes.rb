Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  
  resources :intern_summaries
  resources :answers
  resources :faqs
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
