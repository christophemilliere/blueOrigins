# http://devblog.avdi.org/2012/08/31/configuring-database_cleaner-with-rails-rspec-capybara-and-selenium/
require 'database_cleaner'

RSpec.configure do |config|
  # If you're not using ActiveRecord, or you'd prefer not to run
  # each of your examples within a transaction, remove the following
  # line or assign false instead of true.
  config.use_transactional_fixtures = false

  # Clean up and initialize database before
  # running test exmaples
  config.before(:suite) do
    # Truncate database to clean up garbage from
    # interrupted or badly written examples
    DatabaseCleaner.clean_with(:truncation)

    # Seed dataase. Use it only for essential
    # to run application data.
    load "#{Rails.root}/db/seeds.rb"
  end
