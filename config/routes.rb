Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:destroy, :show, :edit, :update] do
    get 'withdrawal'
  end
  get 'home/about' => 'home#about'
  root 'home#top'
end
