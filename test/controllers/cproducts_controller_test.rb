require 'test_helper'

class CproductsControllerTest < ActionController::TestCase
  setup do
    @cproduct = cproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cproduct" do
    assert_difference('Cproduct.count') do
      post :create, cproduct: { title: @cproduct.title }
    end

    assert_redirected_to cproduct_path(assigns(:cproduct))
  end

  test "should show cproduct" do
    get :show, id: @cproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cproduct
    assert_response :success
  end

  test "should update cproduct" do
    patch :update, id: @cproduct, cproduct: { title: @cproduct.title }
    assert_redirected_to cproduct_path(assigns(:cproduct))
  end

  test "should destroy cproduct" do
    assert_difference('Cproduct.count', -1) do
      delete :destroy, id: @cproduct
    end

    assert_redirected_to cproducts_path
  end
end
