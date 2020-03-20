Rails.application.routes.draw do
	get "main/use_api"
  	root to: "main#index"
end
