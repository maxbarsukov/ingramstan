require 'application_system_test_case'

class UserSystemTest < ApplicationSystemTestCase
  setup do
    visit new_user_session_path

    fill_in 'Email', with: users(:one).email
    fill_in 'Password', with: '111111'

    click_on 'Log in'
  end

  test 'visiting the edit page' do
    visit edit_user_registration_path
    assert_selector 'h2', text: 'Edit Profile'
  end

  test 'edit a user' do
    visit edit_user_registration_path

    fill_in 'Username', with: '111'
    fill_in 'Description', with: '111'
    fill_in 'Current password', with: '111111'

    click_on 'Update'

    assert_text 'Your account has been updated successfully.'
  end

  test 'cancel account' do
    visit edit_user_registration_path

    click_on 'Cancel my account'

    accept_alert

    assert_text 'Bye! Your account has been successfully cancelled. We hope to see you again soon.'
  end
end
