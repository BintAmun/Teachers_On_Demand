require "test_helper"

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lessons_index_url
    assert_response :success
  end
end
