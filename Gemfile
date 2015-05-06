source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'devise', '~> 2.1.0'
gem 'cancan', '~> 1.6.7'

gem 'pg', '~> 0.14.0'
#gem 'pg'
gem 'haml-rails', '~> 0.3.4'
gem 'inherited_resources', '~> 1.3.1'
gem 'formtastic', '~> 2.2.0'

gem 'state_machine'
#groupdate - necessário para renderizar gráficos
gem 'groupdate'
gem 'chartkick' # renderizador de gráficos

gem 'whenever' #cron para rails

#Calendário
#gem 'fullcalendar-rails'
#gem 'ransack'
gem 'formtastic-bootstrap'
gem 'will_paginate', '~>3.0'
#gem 'event_calendar','~> 0.0.2' #gem para calendário
gem 'simple_calendar','1.1.9' # outra gem para calendário
gem 'bootstrap_calendar_rails'
gem 'rails_12factor', group: :production #Necessário para o heroku

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  #gem 'sass',
  #gem 'sass-rails',   '~> 3.2.3'
  #gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby
  gem 'execjs'
  gem 'uglifier', '>= 1.0.3'
  #gem 'twitter-bootstrap-rails','2.2.6'
  #gem 'twitter-bootstrap-rails'
  gem 'jquery-ui-rails'
  gem 'font-awesome-rails'
  #gem 'bootstrap_datepicker'
  #gem 'jquery_datepicker'
  #gem 'bootstrap-sass', '~>2.3.2'
 
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
end

#autocomplete
#gem 'rails3-jquery-autocomplete',  git: 'https://github.com/francisd/rails3-jquery-autocomplete'


#gem 'jquery-rails','~> 2.3.0'
#gem 'jquery-rails','2.2.1' #jquery 1.9.1
gem 'jquery-rails','3.0.4' #jquery 1.10.2
gem 'date-input-rails' #helper para data
gem 'modernizr' #necessário para 'date-input-rails' funcionar
gem 'will_paginate-bootstrap'
gem 'bootstrap-will_paginate'
gem 'friendly_id'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


group :development, :test do
  gem 'rspec-rails', '~> 2.10.0'
  gem 'capybara', '~> 1.1.2'
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'poltergeist', '~> 0.6.0'
  gem 'launchy', '~> 2.1.0'
  gem 'factory_girl_rails', '~> 3.3.0'
  gem 'spork', '~> 0.9.0'
  gem 'valid_attribute', '~> 1.2.0'
  gem 'timecop', '~> 0.3.5'
end
group :production do
  gem 'pg', '~> 0.14.0'
end
#linhas necessárias para o heroku
#ruby '1.9.3' 
#gem 'heroku'