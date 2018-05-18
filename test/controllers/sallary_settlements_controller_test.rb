require 'test_helper'

class SallarySettlementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sallary_settlements_index_url
    assert_response :success
  end

end
