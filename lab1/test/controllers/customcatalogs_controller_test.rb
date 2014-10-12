require 'test_helper'

class CustomcatalogsControllerTest < ActionController::TestCase
  setup do
    @customcatalog = customcatalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customcatalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customcatalog" do
    assert_difference('Customcatalog.count') do
      post :create, customcatalog: { features: @customcatalog.features, name: @customcatalog.name, quantity: @customcatalog.quantity }
    end

    assert_redirected_to customcatalog_path(assigns(:customcatalog))
  end

  test "should show customcatalog" do
    get :show, id: @customcatalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customcatalog
    assert_response :success
  end

  test "should update customcatalog" do
    patch :update, id: @customcatalog, customcatalog: { features: @customcatalog.features, name: @customcatalog.name, quantity: @customcatalog.quantity }
    assert_redirected_to customcatalog_path(assigns(:customcatalog))
  end

  test "should destroy customcatalog" do
    assert_difference('Customcatalog.count', -1) do
      delete :destroy, id: @customcatalog
    end

    assert_redirected_to customcatalogs_path
  end
end
