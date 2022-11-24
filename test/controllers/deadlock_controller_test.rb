require "test_helper"

class DeadlockControllerTest < ActionDispatch::IntegrationTest
  test "should get transaction" do
    get deadlock_transaction_url
    assert_response :success
  end

  test "should get clear" do
    get deadlock_clear_url
    assert_response :success
  end
end
