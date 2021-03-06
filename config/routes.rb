Sga::Application.routes.draw do
  
  resources :cerads


  resources :doencas


  resources :paciente_reports do
    collection do
      get :ausentes
    end
    #url: /paciente_reports/ausentes
    #named route: ausentes_pacientes_reports_path
  end


  resources :funcionario_reports


  resources :atendimento_reports do
    collection do
      get :periodo
    end
  end


  resources :avaliacaos


  resources :exame_complementars

  resources :ressonancias

  resources :tomografias

  resources :relogios

  resources :status

  resources :meems

  resources :agenda_profissionals 
    put :controller=>'agenda_profissionals', :action=>'update'
  resources :fluencia_verbals

  #get "project/new_release" => 'project#new_release', :as => :new_release

  resources :atendimentos do
    get :autocomplete_paciente_nome, :on => :collection
    get :edit_content
   
  end
  
  
  #resources :atendimentos 
    
  resources :cdrs


  resources :camcogs


  resources :gds


  resources :aivds


  resources :avds


  resources :tipo_atendimentos
  

  resources :funcaos
  resources :cargos
  resources :funcionarios
  resources :pacientes do
    member do
      get 'prontuario'
    end
  end
    
  resources :pessoas
  
  root :to => 'pages#index'
  devise_for :users
  resources :users
  
    # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
