require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get view:string" do
    get :view:string
    assert_response :success
  end

end
