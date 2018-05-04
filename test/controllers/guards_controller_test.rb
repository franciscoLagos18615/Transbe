require 'test_helper'

class GuardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guards_index_url
    assert_response :success
  end

end
