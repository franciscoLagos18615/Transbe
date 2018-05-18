require 'test_helper'

class ContractGuardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contract_guards_index_url
    assert_response :success
  end

end
