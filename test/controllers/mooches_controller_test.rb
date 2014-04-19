require 'test_helper'

class MoochesControllerTest < ActionController::TestCase
  setup do
    @mooch = mooches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mooches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mooch" do
    assert_difference('Mooch.count') do
      post :create, mooch: { description: @mooch.description, user_id: @mooch.user_id }
    end

    assert_redirected_to mooch_path(assigns(:mooch))
  end

  test "should show mooch" do
    get :show, id: @mooch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mooch
    assert_response :success
  end

  test "should update mooch" do
    patch :update, id: @mooch, mooch: { description: @mooch.description, user_id: @mooch.user_id }
    assert_redirected_to mooch_path(assigns(:mooch))
  end

  test "should destroy mooch" do
    assert_difference('Mooch.count', -1) do
      delete :destroy, id: @mooch
    end

    assert_redirected_to mooches_path
  end
end
