require 'test_helper'

class InstallationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get installations_index_url
    assert_response :success
  end

end
