require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'capybara/rspec'

# Add the 'spec' path in the load path
spec_dir = File.dirname(__FILE__)
$LOAD_PATH.unshift(spec_dir)

# Require all ruby files in the 'support' folder
Dir[File.join(spec_dir, 'support/**/*.rb')].each { |f| require f }

# RSpec config here
RSpec.configure do |config|
  # Capybara config here
  Capybara.run_server = false

  # Define your app host here
  Capybara.app_host = 'http://www.google.fr'

  Capybara.current_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist

  # Don't forget to tell to RSpec to include Capybara :)
  config.include Capybara::DSL
end
