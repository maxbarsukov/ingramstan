ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)

  fixtures :all

  def log_in(user)
    if integration_test?
      login_as user, scope: :user
    else
      sign_in user
    end
  end
end
