require 'test_helper'

class ContractInstallationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contract_installations_index_url
    assert_response :success
  end

end
