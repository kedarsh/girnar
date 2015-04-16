require 'test_helper'

class TeaBaseTypesControllerTest < ActionController::TestCase
  setup do
    @tea_base_type = tea_base_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tea_base_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tea_base_type" do
    assert_difference('TeaBaseType.count') do
      post :create, tea_base_type: { description: @tea_base_type.description, name: @tea_base_type.name, price: @tea_base_type.price, tea_base_id: @tea_base_type.tea_base_id }
    end

    assert_redirected_to tea_base_type_path(assigns(:tea_base_type))
  end

  test "should show tea_base_type" do
    get :show, id: @tea_base_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tea_base_type
    assert_response :success
  end

  test "should update tea_base_type" do
    patch :update, id: @tea_base_type, tea_base_type: { description: @tea_base_type.description, name: @tea_base_type.name, price: @tea_base_type.price, tea_base_id: @tea_base_type.tea_base_id }
    assert_redirected_to tea_base_type_path(assigns(:tea_base_type))
  end

  test "should destroy tea_base_type" do
    assert_difference('TeaBaseType.count', -1) do
      delete :destroy, id: @tea_base_type
    end

    assert_redirected_to tea_base_types_path
  end
end
