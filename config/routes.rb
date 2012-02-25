Job::Application.routes.draw do
  
  resources :players

  root :to =>  "joboffers#index"
  resources :joboffers

end
