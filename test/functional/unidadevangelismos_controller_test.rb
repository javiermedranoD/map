require 'test_helper'

class UnidadevangelismosControllerTest < ActionController::TestCase
  setup do
    @unidadevangelismo = unidadevangelismos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidadevangelismos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidadevangelismo" do
    assert_difference('Unidadevangelismo.count') do
      post :create, unidadevangelismo: @unidadevangelismo.attributes
    end

    assert_redirected_to unidadevangelismo_path(assigns(:unidadevangelismo))
  end

  test "should show unidadevangelismo" do
    get :show, id: @unidadevangelismo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unidadevangelismo.to_param
    assert_response :success
  end

  test "should update unidadevangelismo" do
    put :update, id: @unidadevangelismo.to_param, unidadevangelismo: @unidadevangelismo.attributes
    assert_redirected_to unidadevangelismo_path(assigns(:unidadevangelismo))
  end

  test "should destroy unidadevangelismo" do
    assert_difference('Unidadevangelismo.count', -1) do
      delete :destroy, id: @unidadevangelismo.to_param
    end

    assert_redirected_to unidadevangelismos_path
  end
end
