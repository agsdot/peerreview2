BootstrapSass::Application.routes.draw do
  get '/', to: 'pages#index', as: 'pages_index'
  get 'papers/create_paper', to: 'papers#create_paper', as: 'create_paper'
  get 'assignments/create_assignment', to: 'assignments#create_assignment', as: 'create_assignment'
  get 'courses/admin_create_course', to: 'courses#admin_create_course', as: 'admin_create_course'
  get 'courses/add_teacher_to_course', to: 'courses#add_teacher_to_course', as: 'add_teacher_to_course'
  get 'courses/welcome', to: 'courses#welcome', as: 'welcome'

  get 'courses/select_course', to: 'courses#select_course', as: 'select_course'


  get 'courses/new_course_student', to: 'courses#new_course_student', as: 'new_course_student'
  post 'courses/create_course_student', to: 'courses#create_course_student', as: 'create_course_student'

  get 'courses/new_course_teacher', to: 'courses#new_course_teacher', as: 'new_course_teacher'
  post 'courses/create_course_teacher', to: 'courses#create_course_teacher', as: 'create_course_teacher'

  # resources :papers do
  resources :comments, :only => [:create, :destroy]
  # end


  resources :papers

  resources :assignments

  resources :courses

  resources :users

  root to: 'pages#index'
  # root to: 'users#index'

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'signout', to: 'sessions#destroy', as: 'signout'

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
