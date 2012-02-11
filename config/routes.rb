Job::Application.routes.draw do
  
  root :to =>  "joboffers#index"
  resources :joboffers

end
