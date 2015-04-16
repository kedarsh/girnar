require 'test_helper'

class TeaBasesControllerTest < ActionController::TestCase
  setup do
    @tea_bases = tea_bases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tea_bases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tea_bases" do
    assert_difference('TeaBase.count') do
      post :create, tea_bases: { description: @tea_bases.description, info: @tea_bases.info, name: @tea_bases.name, no_of_flavours: @tea_bases.no_of_flavours, price: @tea_bases.price, serving_style_id: @tea_bases.serving_style_id }
    end

    assert_redirected_to tea_bases_path(assigns(:tea_bases))
  end

  test "should show tea_bases" do
    get :show, id: @tea_bases
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tea_bases
    assert_response :success
  end

  test "should update tea_bases" do
    patch :update, id: @tea_bases, tea_bases: { description: @tea_bases.description, info: @tea_bases.info, name: @tea_bases.name, no_of_flavours: @tea_bases.no_of_flavours, price: @tea_bases.price, serving_style_id: @tea_bases.serving_style_id }
    assert_redirected_to tea_bases_path(assigns(:tea_bases))
  end

  test "should destroy tea_bases" do
    assert_difference('TeaBase.count', -1) do
      delete :destroy, id: @tea_bases
    end

    assert_redirected_to tea_bases_path
  end
end
