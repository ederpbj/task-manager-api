require 'api_version_constraint'

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
  	namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
      #resources :tasks
    end
  end
  #Se ouver versão 2
  #  namespace :v2, path: "/", constraints: ApiVersionConstraint.new(version: 2, default: true) do
  #   resources :tasks
  #  end

#TASKS
    
    #users

    #Ex:
    #www.nomedosite.com/api/tasks
    #www.nomedosite.com/api/users

    #Acesso pelo site
  #www.site.com/api/tasks
    #api.site.com/tasks

    #Acesso local
    #localhost:3000

end
