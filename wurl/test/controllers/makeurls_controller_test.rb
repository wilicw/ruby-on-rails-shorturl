require 'test_helper'

class MakeurlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @makeurl = makeurls(:one)
  end

  test "should get index" do
    get makeurls_url
    assert_response :success
  end

  test "should get new" do
    get new_makeurl_url
    assert_response :success
  end

  test "should create makeurl" do
    assert_difference('Makeurl.count') do
      post makeurls_url, params: { makeurl: { num: @makeurl.num, url: @makeurl.url } }
    end

    assert_redirected_to makeurl_url(Makeurl.last)
  end

  test "should show makeurl" do
    get makeurl_url(@makeurl)
    assert_response :success
  end

  test "should get edit" do
    get edit_makeurl_url(@makeurl)
    assert_response :success
  end

  test "should update makeurl" do
    patch makeurl_url(@makeurl), params: { makeurl: { num: @makeurl.num, url: @makeurl.url } }
    assert_redirected_to makeurl_url(@makeurl)
  end

  test "should destroy makeurl" do
    assert_difference('Makeurl.count', -1) do
      delete makeurl_url(@makeurl)
    end

    assert_redirected_to makeurls_url
  end
end
