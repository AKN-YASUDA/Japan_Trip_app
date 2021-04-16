Rails.application.routes.draw do
  devise_for :users
  get 'prefectures/index'
  root to: "prefectures#index"
end
