source 'https://rubygems.org'
# ruby '2.1.2'
gem 'rails', '4.1.4'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'foundation-rails'
gem 'high_voltage'
gem 'slim-rails'
gem 'devise'
gem 'tinymce-rails'
gem 'font-awesome-rails'
gem 'simple_form'
gem 'mail_form'
gem 'figaro', github: 'laserlemon/figaro'

#Capistrano
gem 'capistrano', '~> 3.2.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.1'
gem 'capistrano-rbenv', github: 'capistrano/rbenv'

gem 'net-ssh', "~> 2.7.0"

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin]