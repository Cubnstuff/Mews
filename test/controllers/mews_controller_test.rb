require 'test_helper'

class MewsControllerTest < ActionController::TestCase
  setup do
    @mew = mews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mew" do
    assert_difference('Mew.count') do
      post :create, mew: { message: @mew.message, user_id: @mew.user_id }
    end

    assert_redirected_to mew_path(assigns(:mew))
  end

  test "should show mew" do
    get :show, id: @mew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mew
    assert_response :success
  end

  test "should update mew" do
    patch :update, id: @mew, mew: { message: @mew.message, user_id: @mew.user_id }
    assert_redirected_to mew_path(assigns(:mew))
  end

  test "should destroy mew" do
    assert_difference('Mew.count', -1) do
      delete :destroy, id: @mew
    end

    assert_redirected_to mews_path
  end
end
