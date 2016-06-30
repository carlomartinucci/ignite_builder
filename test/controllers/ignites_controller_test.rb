require 'test_helper'

class IgnitesControllerTest < ActionController::TestCase
  setup do
    @ignite = ignites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ignites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ignite" do
    assert_difference('Ignite.count') do
      post :create, ignite: { code: @ignite.code, data: @ignite.data, name: @ignite.name }
    end

    assert_redirected_to ignite_path(assigns(:ignite))
  end

  test "should show ignite" do
    get :show, id: @ignite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ignite
    assert_response :success
  end

  test "should update ignite" do
    patch :update, id: @ignite, ignite: { code: @ignite.code, data: @ignite.data, name: @ignite.name }
    assert_redirected_to ignite_path(assigns(:ignite))
  end

  test "should destroy ignite" do
    assert_difference('Ignite.count', -1) do
      delete :destroy, id: @ignite
    end

    assert_redirected_to ignites_path
  end
end
