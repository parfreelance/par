Rails.application.routes.draw do
  get "/short-codes" => "home#short_codes"
  get "/contact" => "home#contact"
  get "/about" => "home#about"
  root "home#index"
end
