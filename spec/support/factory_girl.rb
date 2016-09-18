# spec/support/factory_girl.rb
# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
require 'factory_girl_rails'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
