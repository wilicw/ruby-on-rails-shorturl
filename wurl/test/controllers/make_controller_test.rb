require 'test_helper'

class MakeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get make_index_url
    assert_response :success
  end

end
