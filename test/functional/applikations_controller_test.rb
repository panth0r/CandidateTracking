require 'test_helper'

class ApplikationsControllerTest < ActionController::TestCase
  setup do
    @applikation = applikations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applikations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applikation" do
    assert_difference('Applikation.count') do
      post :create, :applikation => @applikation.attributes
    end

    assert_redirected_to applikation_path(assigns(:applikation))
  end

  test "should show applikation" do
    get :show, :id => @applikation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @applikation.to_param
    assert_response :success
  end

  test "should update applikation" do
    put :update, :id => @applikation.to_param, :applikation => @applikation.attributes
    assert_redirected_to applikation_path(assigns(:applikation))
  end

  test "should destroy applikation" do
    assert_difference('Applikation.count', -1) do
      delete :destroy, :id => @applikation.to_param
    end

    assert_redirected_to applikations_path
  end
end
