Rails.application.routes.draw do
  match('contacts', {:via => :get, :to => 'contacts#index'})
  match('contacts', {:via => :post, :to => 'contacts#create'})
  match('contacts/new', {:via => :get, :to => 'contacts#new'})
  match('contacts/:id', {:via => :get, :to => 'contacts#show'})
  match('contacts/:contact_id/phones/new', {:via => :get, :to => 'phones#new'})
  match('contacts/:id/edit', {:via => :get, :to => 'contacts#edit'})
  match('contacts/:id', {:via => [:patch, :put], :to => 'contacts#update'})
  match('contacts/:id', {:via => :delete, :to => 'contacts#destroy'})
  match('contacts/:contact_id/phones', {:via => :post, :to => 'phones#create'})
  match('phones/:id', {:via => :delete, :to => 'phones#destroy'})
  match('/', {:via => :get, :to => 'contacts#index'})
end
#
# The four HTTP methods we're using - POST, GET, PATCH, and DELETE - map to the CRUD paradigm: Create is POST, Read is GET, Update is PATCH, and Destroy is DELETE. The fifth part of CRUD, List, maps to the GET index action. And then we have the GET new
# and GET edit actions, which are basically tools to let the user make a POST or PATCH request. These 7 actions are what we call RESTful actions. REST stands for Representational State Transfer, and it's an approach to designing web services based around CRUD with simple documents.
