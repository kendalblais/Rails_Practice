
Rails.application.routes.draw do
   #get 'site/index'

  resources :bookmarks
  match ':controller(/:action(/:id))', :via => :get
  Bookmarks::Application.routes.draw do

    #get 'site/index'

    root 'bookmarks#index'
    devise_for :users
    #root'bookmarks#index'

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
