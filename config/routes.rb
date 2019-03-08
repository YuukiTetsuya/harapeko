Rails.application.routes.draw do
  root 'static_pages#home'
  get '/term',            to: 'static_pages#term'
  get '/privacy_policy',  to: 'static_pages#privacy_policy'
  get '/contact',         to: 'static_pages#contact'

end
