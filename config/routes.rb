Rails.application.routes.draw do
  get 'people/show'

  root 'staticpages#home'

  

  get 'help' => 'staticpages#help'

  get 'about' => 'staticpages#about'
   get 'signUp' => 'people#new'
 
    resources :people
    
  
end
