source "https://rubygems.org"

ruby "3.1.2"
gem "rails", "~> 7.0.7", ">= 7.0.7.2"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "vcr"

gem "pg"
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

