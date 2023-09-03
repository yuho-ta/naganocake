Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }
  
  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end
  
  
  devise_for :customers, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
  }
  
  scope module: :public do
    root 'homes#top'
    get 'customers/mypage' => 'customers#show', as: 'mypage'
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
