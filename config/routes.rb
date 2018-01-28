Rails.application.routes.draw do
	scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
		resources :leads
		root "leads#index", as: :authenticated_root
	end
	match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
	match '', to: redirect("/#{I18n.default_locale}"), :via => [:get, :post]

end
