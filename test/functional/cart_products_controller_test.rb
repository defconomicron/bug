require 'test_helper'

class CartProductsControllerTest < ActionController::TestCase
  setup do
    @cart_product = cart_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_product" do
    assert_difference('CartProduct.count') do
      post :create, :cart_product => @cart_product.attributes
    end

    assert_redirected_to cart_product_path(assigns(:cart_product))
  end

  test "should show cart_product" do
    get :show, :id => @cart_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cart_product.to_param
    assert_response :success
  end

  test "should update cart_product" do
    put :update, :id => @cart_product.to_param, :cart_product => @cart_product.attributes
    assert_redirected_to cart_product_path(assigns(:cart_product))
  end

  test "should destroy cart_product" do
    assert_difference('CartProduct.count', -1) do
      delete :destroy, :id => @cart_product.to_param
    end

    assert_redirected_to cart_products_path
  end
end
