require 'test_helper'

class AggregateControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get aggregate_show_url
    assert_response :success
  end

end
