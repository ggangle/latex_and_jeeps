Rails.application.routes.draw do

root "home#home"

resources :photos
resources :albums

end
