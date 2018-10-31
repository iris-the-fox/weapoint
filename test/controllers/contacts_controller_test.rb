require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get contacts" do
    get contacts_contacts_url
    assert_response :success
  end

end
