# Below are the routes for madmin
namespace :madmin do
  resources :touringplans_cached_venues
  namespace :active_storage do
    resources :blobs
  end
  resources :services
  resources :announcements
  resources :notifications
  resources :users
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :attachments
  end
  root to: "dashboard#show"
end
