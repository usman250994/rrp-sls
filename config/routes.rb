Rails.application.routes.draw do
  get 'persons/show'

  root 'staticpages#home'

  

  get 'help' => 'staticpages#help'

  get 'about' => 'staticpages#about'
   get 'signUp' => 'persons#new'
  resources :persons
    resource :person
end
