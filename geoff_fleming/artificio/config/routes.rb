Rails.application.routes.draw do
  devise_for :users
# can have the root of your site routed with "root"

# check out devise wiki overrides and customization

devise_scope :user do
  get "/sign_in" => "devise/sessions#new"
  delete "/sign_out" => "devise/sessions#destroy"
  get "/sign_up" => "devise/registrations#new"
end

 resources  :artists
 resources  :art_works
 resources  :venues
 resources  :contacts
 root 'static_pages#home'


end
