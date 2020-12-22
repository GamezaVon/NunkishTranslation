require 'test_helper'

class AutomationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get automation_index_url
    assert_response :success
  end

end
