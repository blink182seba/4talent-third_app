Rails.application.routes.draw do
  get 'city/index'
  get 'city/get_temperatures'
  root 'city#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
