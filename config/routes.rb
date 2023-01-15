Rails.application.routes.draw do
  get 'community_reviews/index'
  get 'community_reviews/show'
  get 'community_reviews/new'
  get 'community_reviews/edit'
  get 'community_reviews/create'
  get 'community_reviews/update'
  get 'community_reviews/destroy'
  get 'communities/index'
  get 'communities/show'
  get 'communities/new'
  get 'communities/edit'
  get 'communities/create'
  get 'communities/update'
  get 'communities/destroy'
  get 'ondemand_categories/index'
  get 'ondemand_categories/show'
  get 'ondemand_categories/new'
  get 'ondemand_categories/edit'
  get 'ondemand_categories/create'
  get 'ondemand_categories/update'
  get 'ondemand_categories/destroy'
  devise_for :users
  get 'ondemand_nets/index'
  get 'ondemand_nets/show'
  get 'ondemand_nets/new'
  get 'ondemand_nets/edit'
  get 'ondemand_nets/create'
  get 'ondemand_nets/update'
  get 'ondemand_nets/destroy'
  get 'ondemand_reals/index'
  get 'ondemand_reals/show'
  get 'ondemand_reals/new'
  get 'ondemand_reals/edit'
  get 'ondemand_reals/create'
  get 'ondemand_reals/update'
  get 'ondemand_reals/destroy'
  get 'ondemands/index'
  get 'ondemands/show'
  get 'ondemands/new'
  get 'ondemands/edit'
  get 'ondemands/create'
  get 'ondemands/update'
  get 'ondemands/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
