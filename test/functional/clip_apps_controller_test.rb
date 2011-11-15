require 'test_helper'

class ClipAppsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clip_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clip_app" do
    assert_difference('ClipApp.count') do
      post :create, :clip_app => { }
    end

    assert_redirected_to clip_app_path(assigns(:clip_app))
  end

  test "should show clip_app" do
    get :show, :id => clip_apps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => clip_apps(:one).to_param
    assert_response :success
  end

  test "should update clip_app" do
    put :update, :id => clip_apps(:one).to_param, :clip_app => { }
    assert_redirected_to clip_app_path(assigns(:clip_app))
  end

  test "should destroy clip_app" do
    assert_difference('ClipApp.count', -1) do
      delete :destroy, :id => clip_apps(:one).to_param
    end

    assert_redirected_to clip_apps_path
  end
end
