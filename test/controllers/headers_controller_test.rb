require 'test_helper'

class HeadersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get headers_show_url
    assert_response :success
  end

end
