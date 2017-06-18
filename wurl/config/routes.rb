Rails.application.routes.draw do
  get 'make' , to: 'make#index'
  get '/:id' , to: 'go#index'
  post 'make/todata' , to: 'make#todata'
end
