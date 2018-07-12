Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'users/sessions', 
    registrations: 'users/registrations', 
    passwords: 'users/passwords', 
    unlocks: 'users/unlocks', 
    confirmations: 'users/confirmations', 
    omniauthable: 'users/omniauthable' 
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#main' 
  get '/livestream', to: 'pages#livestream'
  # get '/charter', to: 'pages#charter'
  get '/jobs', to: 'pages#jobs'
  get '/jobs/:position', to: 'pages#job', as: "show_job"
  get '/members', to: 'pages#members'
  # get '/staff', to: 'pages#staff'
  get '/resources', to: 'pages#resources'
  get '/faqs', to: 'pages#faqs'

  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#submit_comment', as: "send_comment"
  
  get '/hearings', to: 'pages#hearings'
  # get '/archived', to: 'pages#archived'
  get '/hearings/:date_of_hearing', to: 'pages#hearing', as: "show_hearing"

  get '/reports', to: 'pages#reports'
  get '/reports/:id', to: 'pages#report', as: "show_report"

  get '/news', to: 'pages#news'
  get '/news/:order/:title', to: 'pages#news_article', as: "show_news"

  get '/kiosk', to: 'pages#kiosk'

  get '/admin', to: 'admins#index'

  get '/admin/users/', to: 'admins#admin_users', as: "manage_users"
  get '/admin/users/create_new', to: 'admins#create_new_admin_user', as: "new_admin"
  post '/admin/users/create_new', to: 'admins#save_new_admin_user', as: "save_admin"
  delete '/admin/users/:id', to: 'admins#delete_user', as: "delete_user"

  get '/admin/messages', to: 'admins#all_messages'
  get '/admin/messages/:id', to: 'admins#message', as: 'edit_message'
  put '/admin/messages/:id', to: 'admins#update_message'
  delete '/admin/messages/:id', to: 'admins#delete_message', as: 'destroy_message'
  get '/admin/gen-msg-report', to: 'admins#generate_message_report', as: 'generate_report'

  get '/admin/staff', to: 'admins#all_staff'
  get 'admin/staff/new', to: 'admins#new_staff'
  post 'admin/staff/new', to: 'admins#create_staff'
  get '/admin/staff/:id/edit', to: 'admins#staff', as: 'edit_staff'
  put '/admin/staff/:id/edit', to: 'admins#update_staff'
  delete '/admin/staff/:id', to: 'admins#delete_staff', as: 'destroy_staff'

  get '/admin/members', to: 'admins#all_members'
  get 'admin/members/new', to: 'admins#new_member'
  post 'admin/members/new', to: 'admins#create_member'
  get '/admin/members/:id/edit', to: 'admins#member', as: 'edit_member'
  put '/admin/members/:id/edit', to: 'admins#update_member'
  delete '/admin/members/:id', to: 'admins#delete_member', as: 'destroy_member'

  get '/admin/jobs', to: 'admins#all_jobs'
  get 'admin/jobs/new', to: 'admins#new_job'
  post 'admin/jobs/new', to: 'admins#create_job'
  get '/admin/jobs/:id/edit', to: 'admins#job', as: 'edit_job'
  put '/admin/jobs/:id/edit', to: 'admins#update_job'
  delete '/admin/jobs/:id', to: 'admins#delete_job', as: 'destroy_job'

  get '/admin/hearings', to: 'admins#all_hearings'
  get 'admin/hearings/new', to: 'admins#new_hearing'
  post 'admin/hearings/new', to: 'admins#create_hearing'
  get '/admin/hearings/:id/edit', to: 'admins#hearing', as: 'edit_hearing'
  put '/admin/hearings/:id/edit', to: 'admins#update_hearing'
  delete '/admin/hearings/:id', to: 'admins#delete_hearing', as: 'destroy_hearing'

  get '/admin/news', to: 'admins#all_news'
  get 'admin/news/new', to: 'admins#new_news'
  post 'admin/news/new', to: 'admins#create_news'
  get '/admin/news/:id/edit', to: 'admins#news', as: 'edit_news'
  put '/admin/news/:id/edit', to: 'admins#update_news'
  delete '/admin/news/:id', to: 'admins#delete_news', as: 'destroy_news'

  get '/admin/reports', to: 'admins#all_reports'
  get 'admin/reports/new', to: 'admins#new_report'
  post 'admin/reports/new', to: 'admins#create_report'
  get '/admin/reports/:id/edit', to: 'admins#report', as: 'edit_report'
  put '/admin/reports/:id/edit', to: 'admins#update_report'
  delete '/admin/reports/:id', to: 'admins#delete_report', as: 'destroy_report'
end
