Rails.application.routes.draw do


  root to: 'top#index'

  get 'tweets'        => 'tweets#index'
  
  get 'tweets/new'    =>  'tweets#new'
  post 'tweets'       =>  'tweets#create'



end
