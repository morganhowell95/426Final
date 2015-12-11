require 'test_helper'

class UsercodesControllerTest < ActionController::TestCase
  setup do
    @usercode = usercodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usercodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usercode" do
    assert_difference('Usercode.count') do
      post :create, usercode: { code: @usercode.code, user_id: @usercode.user_id }
    end

    assert_redirected_to usercode_path(assigns(:usercode))
  end

  test "should show usercode" do
    get :show, id: @usercode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usercode
    assert_response :success
  end

  test "should update usercode" do
    patch :update, id: @usercode, usercode: { code: @usercode.code, user_id: @usercode.user_id }
    assert_redirected_to usercode_path(assigns(:usercode))
  end

  test "should destroy usercode" do
    assert_difference('Usercode.count', -1) do
      delete :destroy, id: @usercode
    end

    assert_redirected_to usercodes_path
  end
end
