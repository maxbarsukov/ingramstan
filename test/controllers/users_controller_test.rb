require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test 'should get dashboard' do
    get dashboard_url
    assert_response :success
  end

  test 'should get profile' do
    get profile_url users(:one)
    assert_response :success
  end

  test 'should edit profile' do
    get edit_user_registration_path
    assert_response :success
  end
end
