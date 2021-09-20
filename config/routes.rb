Rails.application.routes.draw do
  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
    # gives access to /authors/:author_id/posts/new and new_author_post_path helper
  end
  resources :posts
end
