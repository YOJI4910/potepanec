Rails.application.routes.draw do
  get 'homes/index'

  mount Spree::Core::Engine, at: '/'

  namespace :potepan do
    get '/',                        to: 'homes#index'
    get 'index',                    to: 'homes#index'
    resources :products, only: [:show]
    resources :categories, only: [:show]
    get :product_list_left_sidebar, to: 'sample#product_list_left_sidebar'
    get :cart_page,                 to: 'sample#cart_page'
    get :checkout_step_1,           to: 'sample#checkout_step_1'
    get :checkout_step_2,           to: 'sample#checkout_step_2'
    get :checkout_step_3,           to: 'sample#checkout_step_3'
    get :checkout_complete,         to: 'sample#checkout_complete'
    get :blog_left_sidebar,         to: 'sample#blog_left_sidebar'
    get :blog_right_sidebar,        to: 'sample#blog_right_sidebar'
    get :blog_single_left_sidebar,  to: 'sample#blog_single_left_sidebar'
    get :blog_single_right_sidebar, to: 'sample#blog_single_right_sidebar'
    get :about_us,                  to: 'sample#about_us'
    get :tokushoho,                 to: 'sample#tokushoho'
    get :privacy_policy,            to: 'sample#privacy_policy'
  end
end
