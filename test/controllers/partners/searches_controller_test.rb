require "test_helper"

class Partners::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get partners_searches_index_url
    assert_response :success
  end
end
