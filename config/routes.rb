Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "test#index"

  controller :test do
    get "template", action: :template
    get "template_layout_true", action: :template_layout_true
    get "template_custom_layout", action: :template_custom_layout

    get "inline", action: :inline
    get "inline_layout_true", action: :inline_layout_true
    get "inline_custom_layout", action: :inline_custom_layout

    post "turbo_template", action: :turbo_template
    post "turbo_template_layout_true", action: :turbo_template_layout_true
    post "turbo_inline", action: :turbo_inline
    post "turbo_inline_layout_true", action: :turbo_inline_layout_true
    post "turbo_inline_explicit_layout", action: :turbo_inline_explicit_layout
  end
end
