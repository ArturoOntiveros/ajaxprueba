require 'test_helper'

class QuejasControllerTest < ActionController::TestCase
  setup do
    @queja = quejas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quejas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create queja" do
    assert_difference('Queja.count') do
      post :create, queja: { text: @queja.text, user_id: @queja.user_id }
    end

    assert_redirected_to queja_path(assigns(:queja))
  end

  test "should show queja" do
    get :show, id: @queja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @queja
    assert_response :success
  end

  test "should update queja" do
    patch :update, id: @queja, queja: { text: @queja.text, user_id: @queja.user_id }
    assert_redirected_to queja_path(assigns(:queja))
  end

  test "should destroy queja" do
    assert_difference('Queja.count', -1) do
      delete :destroy, id: @queja
    end

    assert_redirected_to quejas_path
  end
end
