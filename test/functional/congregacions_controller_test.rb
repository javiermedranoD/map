require 'test_helper'

class CongregacionsControllerTest < ActionController::TestCase
  setup do
    @congregacion = congregacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congregacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congregacion" do
    assert_difference('Congregacion.count') do
      post :create, congregacion: @congregacion.attributes
    end

    assert_redirected_to congregacion_path(assigns(:congregacion))
  end

  test "should show congregacion" do
    get :show, id: @congregacion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congregacion.to_param
    assert_response :success
  end

  test "should update congregacion" do
    put :update, id: @congregacion.to_param, congregacion: @congregacion.attributes
    assert_redirected_to congregacion_path(assigns(:congregacion))
  end

  test "should destroy congregacion" do
    assert_difference('Congregacion.count', -1) do
      delete :destroy, id: @congregacion.to_param
    end

    assert_redirected_to congregacions_path
  end
end
