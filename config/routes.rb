Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "blog_posts" => "blog_posts#index", as: "all_posts"
  get "blog_posts/new" => "blog_posts#new", as: "new_posts"
  get "blog_posts/:id" => "blog_posts#show", as: "blog_post"
  post "blog_posts" => "blog_posts#create"
  root to: 'blog_posts#index'
end
