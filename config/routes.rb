# == Route Map
#
#                         Prefix Verb       URI Pattern                                                                              Controller#Action
#         new_admin_user_session GET        /admin/login(.:format)                                                                   active_admin/devise/sessions#new
#             admin_user_session POST       /admin/login(.:format)                                                                   active_admin/devise/sessions#create
#     destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                                                  active_admin/devise/sessions#destroy
#        new_admin_user_password GET        /admin/password/new(.:format)                                                            active_admin/devise/passwords#new
#       edit_admin_user_password GET        /admin/password/edit(.:format)                                                           active_admin/devise/passwords#edit
#            admin_user_password PATCH      /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                PUT        /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                POST       /admin/password(.:format)                                                                active_admin/devise/passwords#create
#                     admin_root GET        /admin(.:format)                                                                         admin/dashboard#index
# batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                                                admin/admin_users#batch_action
#              admin_admin_users GET        /admin/admin_users(.:format)                                                             admin/admin_users#index
#                                POST       /admin/admin_users(.:format)                                                             admin/admin_users#create
#           new_admin_admin_user GET        /admin/admin_users/new(.:format)                                                         admin/admin_users#new
#          edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                                    admin/admin_users#edit
#               admin_admin_user GET        /admin/admin_users/:id(.:format)                                                         admin/admin_users#show
#                                PATCH      /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                PUT        /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                DELETE     /admin/admin_users/:id(.:format)                                                         admin/admin_users#destroy
#                admin_dashboard GET        /admin/dashboard(.:format)                                                               admin/dashboard#index
#                 admin_comments GET        /admin/comments(.:format)                                                                admin/comments#index
#                                POST       /admin/comments(.:format)                                                                admin/comments#create
#                  admin_comment GET        /admin/comments/:id(.:format)                                                            admin/comments#show
#                                DELETE     /admin/comments/:id(.:format)                                                            admin/comments#destroy
#                     pages_show GET        /pages/show(.:format)                                                                    pages#show
#                      home_show GET        /home/show(.:format)                                                                     home#show
#                          pages GET        /pages(.:format)                                                                         pages#show
#                           root GET        /                                                                                        home#show
#             rails_service_blob GET        /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#      rails_blob_representation GET        /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#             rails_disk_service GET        /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#      update_rails_disk_service PUT        /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#           rails_direct_uploads POST       /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/show'
  get 'home/show'
  resource :pages, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#show"
end
