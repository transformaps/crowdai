require 'sidekiq/web'

Rails.application.routes.draw do

  admin = lambda do |request|
    request.env['warden'].authenticate? && request.env['warden'].user.admin?
  end

  constraints admin do
    mount Sidekiq::Web => '/sidekiq'
    ActiveAdmin.routes(self)
  end

  devise_for :participants
  #, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)
  resources :participants, only: [:show, :edit, :update, :destroy] do
    get :sync_mailchimp
    get :regen_api_key
    get :remove_image
    resources :email_preferences, only: [:edit, :update]
  end


  # API
  namespace :api do
    resources :submissions, only: [:update]
    resources :external_graders, only: [:create, :show, :update] do
      get :challenge_config, on: :collection
    end
    resources :opensim_gradings, only: [:create, :update, :show]
    resources :mailchimp_webhooks, only: [:show,:create]
  end

  resources :landing_page, only: [:index]
  match '/landing_page/host', to: 'landing_page#host', via: :get

  resources :organizer_applications, only: [:create]
  resources :organizers, except: [:new, :index] do
    resources :challenges
    get :remove_image
  end

  resources :challenges do
    resources :dataset_files, only: [:new, :show, :index, :destroy, :create]
    resources :events
    resources :submissions do
      get :grade
      get :hub
      get :execute
    end
    resources :leaderboards, only: [:index]
    get 'leaderboards/video_modal' => 'leaderboards#video_modal', as: :video_modal
    get 'leaderboards/submission_detail' => 'leaderboards#submission_detail', as: :submission_detail
    resources :topics
    get :regrade
    get :regen_api_key
    get :remove_image
    resources :votes, only: [:create, :destroy]
    resources :follows, only: [:create, :destroy]
  end
  get '/load_more_challenges', to: 'challenges#load_more', as: :load_more_challenges


  resources :topics do
    resources :comments, only: [:new, :create] do
      get :quote
    end
    resources :votes, only: [:create, :destroy]
  end

  resources :comments, only: [] do
    resources :votes, only: [:create, :destroy]
  end

  resources :articles do
    resources :article_sections
    resources :votes, only: [:create, :destroy]
    get :remove_image
  end
  get '/load_more_articles', to: 'articles#load_more', as: :load_more_articles

  match '/pages/contact', to: 'pages#contact', via: :get
  match '/pages/privacy', to: 'pages#privacy', via: :get
  match '/pages/terms',   to: 'pages#terms', via: :get

  resources :markdown_editors, only: [:index] do
    put :presign, on: :collection
  end

  root 'landing_page#index'
end
