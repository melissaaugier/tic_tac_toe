require 'test_helper'

class CaseControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get case_edit_url
    assert_response :success
  end

  test "should get update" do
    get case_update_url
    assert_response :success
  end

end
