# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string(20)
#  last_name              :string(20)
#  username               :string(20)
#  image                  :string
#  description            :text
#  website                :string
#  provider               :string
#  uid                    :string
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'has username' do
    assert_equal '1', users(:one).username
  end

  test 'can update username' do
    users(:one).update(first_name: '11')
    assert_equal '11', users(:one).first_name
  end
end
