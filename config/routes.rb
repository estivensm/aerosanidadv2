PetThing::Application.routes.draw do

  
  resources :emergencias
  resources :procedimientos_medicos_y_de_enfermeria
  # Rutas para acceder a los informes
  get 'dashboard1/mapa',  to: 'dashboard1#mapa', as: "mapa"

  get 'dashboard1/graficas',  to: 'dashboard1#graficas', as: "graficas"

  get 'informes/index',  to: 'informes#index', as: "info_link"

  get 'informes/mensual_actividades_medicas',    to: 'informes#mensual_actividades_medicas', as: "mensual_actividades_medicas"

  get 'informes/aerocivil',    to: 'informes#aerocivil', as: "aerocivil"

  get 'informes/procedimientos_medicos_enfermeria',    to: 'informes#procedimientos_medicos_enfermeria', as: "procedimientos_medicos_enfermeria"

  get 'informes/pacientes_atendidos_por_empresas',  to: 'informes#pacientes_atendidos_por_empresas', as: "pacientes_atendidos_por_empresas"

  get 'informes/usuarios',  to: 'informes#usuarios', as: "usuarios"

  get 'informes/doctores',  to: 'informes#doctores', as: "doctores"

  get 'informes/historia_usuario',  to: 'informes#historia_usuario', as: "historia_usuario"

  get "reportes", :to => "pages#reportes"

  resources :paises
  resources :cie10s , :defaults => { :format => :json }

  resources :empresas, :path => "empresas"
  resources :procedimientos, :path => "procedimientos"
  resources :diagnosticos,  :path => "diagnosticos"
  resources :roles, :path => "roles"
  resources :aeropuertos, :path => "aeropuertos"

  resources :ciudades, :path => "ciudades" do
    collection do
      get :autocomplete_ciudad_nombre
    end
  end


  resources :arles, :path => "arl" do
    collection do
      get :autocomplete_arl_nombre
    end
  end

  resources :epses, :path => "eps" do
    collection do
      get :autocomplete_eps_nombre
    end
  end

  resources :users, :path => "usuarios"
  resources :roles, :path => "roles"

  resources :sheets
  resources :material_sheets



  get 'reset_passwords/new'

  get 'pages/home'
  get 'pages/contact'
  get 'pages/help'

  resources :sessions
  resources :reset_passwords, only: [:new, :create, :update, :edit]

  resources :messages do
    member do
      post :new
    end
  end

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
    collection do
      get :trashbin
      post :empty_trash
    end
  end


  get       'login',  to:   'sessions#new',       as: :login
  post      'login',  to:   'sessions#create'
  get "logout" => "sessions#destroy", :as => "logout"





  resources :pacientes, :path => "pacientes",  only: [:new, :create, :index, :destroy, :show, :edit, :update]  do
    resources :historias_clinicas,  :path => "historias_clinicas", only: [:new, :create, :index, :destroy, :show, :edit, :update] do
      resources :steps,  :path => "steps", only: [:show, :update, :edit], controller: 'historia_clinica/steps'
      resources :notas_progreso,  :path => "notas_progreso", only: [:new, :create, :index, :destroy, :show, :edit, :update]
    end
  end


  root to: 'pages#home'

  match "*path" => redirect("/"), via: :get 


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
