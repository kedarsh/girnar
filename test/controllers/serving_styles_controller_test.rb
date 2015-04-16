require 'test_helper'

class ServingStylesControllerTest < ActionController::TestCase
  setup do
    @serving_style = serving_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serving_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serving_style" do
    assert_difference('ServingStyle.count') do
      post :create, serving_style: { description: @serving_style.description, name: @serving_style.name }
    end

    assert_redirected_to serving_style_path(assigns(:serving_style))
  end

  test "should show serving_style" do
    get :show, id: @serving_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serving_style
    assert_response :success
  end

  test "should update serving_style" do
    patch :update, id: @serving_style, serving_style: { description: @serving_style.description, name: @serving_style.name }
    assert_redirected_to serving_style_path(assigns(:serving_style))
  end

  test "should destroy serving_style" do
    assert_difference('ServingStyle.count', -1) do
      delete :destroy, id: @serving_style
    end

    assert_redirected_to serving_styles_path
  end
end
