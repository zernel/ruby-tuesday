source 'http://ruby.taobao.org'
#source 'https://rubygems.org'

gem 'rails', '3.2.2'

gem 'jquery-rails'
gem 'haml'
gem 'haml-rails'

gem 'simple_form'

# 配置插件
gem 'settingslogic'

# Mongoid 辅助组件
gem "mongoid", "~> 2.4"
gem "bson_ext", "~> 1.5"
gem 'mongoid_auto_increment_id', "0.4.0"
gem 'mongo-rails-instrumentation','0.2.4'

# 用户管理
gem 'devise'
gem 'cancan'

# 后台管理
gem 'rails_admin'

# 禁用 assets 日志
gem 'quiet_assets', :git => 'git://github.com/AgilionApps/quiet_assets.git'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'bootstrap-sass', '~> 2.0.1'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer'
  gem 'execjs'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'pry'
  gem 'thin'
  gem 'ffaker'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'factory_girl_rails'
end

group :test do
  gem 'shoulda-matchers'
  gem 'rack_session_access'
  gem 'database_cleaner'
  gem 'simplecov', :require => false
end

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
