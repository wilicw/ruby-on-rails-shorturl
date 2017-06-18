require 'test_helper'

class GoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get go_index_url
    assert_response :success
  end

end
