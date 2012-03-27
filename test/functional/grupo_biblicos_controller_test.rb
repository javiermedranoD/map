require 'test_helper'

class GrupoBiblicosControllerTest < ActionController::TestCase
  setup do
    @grupo_biblico = grupo_biblicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_biblicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_biblico" do
    assert_difference('GrupoBiblico.count') do
      post :create, grupo_biblico: @grupo_biblico.attributes
    end

    assert_redirected_to grupo_biblico_path(assigns(:grupo_biblico))
  end

  test "should show grupo_biblico" do
    get :show, id: @grupo_biblico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo_biblico.to_param
    assert_response :success
  end

  test "should update grupo_biblico" do
    put :update, id: @grupo_biblico.to_param, grupo_biblico: @grupo_biblico.attributes
    assert_redirected_to grupo_biblico_path(assigns(:grupo_biblico))
  end

  test "should destroy grupo_biblico" do
    assert_difference('GrupoBiblico.count', -1) do
      delete :destroy, id: @grupo_biblico.to_param
    end

    assert_redirected_to grupo_biblicos_path
  end
end
