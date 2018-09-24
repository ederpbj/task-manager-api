Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
  	namespace :v1 do:
  	end
  end
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
