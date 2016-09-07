require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get load" do
    get api_load_url
    assert_response :success
  end

end
