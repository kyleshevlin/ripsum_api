Rails.application.routes.draw do

  root 'pages#index'

  get '/:count', to: 'ripsums#index'
  get '/:count/:variance', to: 'ripsums#index'

end
