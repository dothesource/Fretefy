Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :bids

  resources :jobs do
    resources :bids, only: :none, controller: "jobs" do
      put 'accept_bid'
    end
  end

  resources :trucks do
    resources :jobs, only: :none, controller: "trucks" do
      put 'start_job'
    end
  end

  resources :users

  resources :accounts
end
