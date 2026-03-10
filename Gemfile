source 'https://rubygems.org'

# Rails
gem 'rails', '~> 8.0'
gem 'rails-observers' # observers got extracted since rails 4
gem 'activerecord-session_store' # sessions in activerecord

# Plattforms Ruby
platforms :ruby do
  gem 'mini_racer' # js runtime (replacement for therubyracer)
  gem 'pg', '~> 1.5' # postgres
end

# ----------  Model ----------

# ActiveStorage is built into Rails (replacement for paperclip)
gem 'image_processing', '~> 1.2' # For ActiveStorage variants
gem 'money-rails', '~> 1.15' # dealing with money in activerecord
gem 'monetize' # parsing money
gem 'enumerize', '>= 2.5' # enums as symbols in ar
gem 'state_machines' # State Machines in Rails
gem 'state_machines-activerecord' # ActiveRecord integration for state_machines
gem 'amoeba'
gem 'sanitize' # Parser based sanitization
gem 'awesome_nested_set', '~> 3.6' # Updated for Rails 8 compatibility
gem 'friendly_id', '~> 5.5' # Friendly_id for beautiful links

# pseudo models
gem 'active_data'

## Indexing /Searching
gem 'chewy', '~> 7.3'
gem 'elasticsearch', '~> 8.0'
gem 'faraday', '~> 2.7'

# ---------- View ----------

gem 'slim-rails'
gem 'jbuilder'

## CSS
gem 'dartsass-rails' # Replacement for sass-rails
gem 'font-awesome-rails', '>= 4.7.0'
gem 'sprite-factory'
gem 'chunky_png' # needed for sprite-factory

## JS
gem 'jsbundling-rails' # Modern JS bundling with terser support
gem 'jquery-rails'
gem 'i18n-js', '~> 4.0'
gem 'tinymce-rails', '~> 6.0'
gem 'rails-timeago', '~> 2.20'
gem 'importmap-rails' # Modern JS imports
gem 'stimulus-rails' # Stimulus for JS behavior
gem 'turbo-rails' # Turbo for SPA-like navigation (replaces rails-ujs)

## Forms

gem 'formtastic'
gem 'recaptcha', require: 'recaptcha/rails' # Captcha Gem

# ---------- Controller ----------

gem 'canonical-rails' # canonical view links
gem 'devise', '~> 4.9'
gem 'pundit' # authorization
gem 'kaminari' # pagination
gem 'responders'

# # ---------- Mail ----------

gem 'premailer-rails'

# # ---------- Background Processing ----------

gem 'sidekiq', '~> 7.0'
gem 'sidekiq-scheduler', '~> 5.0'
gem 'redis', '~> 5.0'
# delayed_paperclip removed - use ActiveStorage with ActiveJob directly
gem 'eye'

# # ---------- Tools ----------

gem 'dalli' # Memcached Client
gem 'kontoapi-ruby' # KontoAPI checks bank data
gem 'ibanomat' # accound number to IBAN
gem 'memoist' # Support for memoization
gem 'rails_admin', '~> 3.0' # Administrative backend
gem 'rack-rewrite' # Redirects
gem 'nokogiri'
gem 'prawn_rails' # pdf generation
gem 'bootsnap', require: false # Reduces boot times

# ---------- Monitoring ----------
gem 'newrelic_rpm', group: [:production, :staging]
gem 'rack-mini-profiler'
gem 'lograge'
gem 'exception_notification'

# ---------- API ----------

# Gem for connecting to FastBill Automatic
gem 'fastbill-automatic', github: 'marcaltmann/fastbill-automatic'

gem 'savon', '~> 2.14' # interacing with other SOAP apis
gem 'rubyntlm' # https://github.com/savonrb/savon/issues/593

# Paypal integration
gem 'paypal_adaptive'

# ---------- Development ----------

group :development do
  # Better error messages
  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'letter_opener' # emails in browser
  gem 'web-console' # Rails 8 console in browser

  # Capistrano deployment
  gem 'capistrano-rails', '~> 1.6'
  gem 'capistrano-bundler', '~> 2.1'
  gem 'capistrano-rbenv'
end

group :test do
  # rails
  gem 'rails-controller-testing'

  gem 'shoulda', '~> 4.0'
  gem 'shoulda-matchers', '~> 5.0'

  # System tests
  gem 'capybara'
  gem 'selenium-webdriver'

  # mocks and stubs
  gem 'mocha'
  gem 'webmock'
  gem 'fakeredis'
  gem 'rack-contrib' # fake fastbill

  # Gem for testing emails
  gem 'email_spec'

  # Code Coverage
  gem 'simplecov'
  gem 'coveralls', require: false
end

group :development, :test do
  gem 'pry-rails' # pry is awsome
  gem 'pry-byebug' # kickass debugging
  gem 'debug' # Rails 8 default debugger

  # static code analysis
  gem 'rails_best_practices'
  gem 'brakeman'
  gem 'rubocop' # style enforcement
  gem 'rubocop-rails' # Rails-specific cops
  gem 'bullet' # Notify about n+1 queries
  gem 'puma' # Application server
end

group :development, :test, :staging do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker'
end
