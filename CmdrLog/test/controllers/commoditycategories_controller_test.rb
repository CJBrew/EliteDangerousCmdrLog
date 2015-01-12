require 'test_helper'

class CommoditycategoriesControllerTest < ActionController::TestCase
  setup do
    @commoditycategory = commoditycategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commoditycategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commoditycategory" do
    assert_difference('Commoditycategory.count') do
      post :create, commoditycategory: { name: @commoditycategory.name }
    end

    assert_redirected_to commoditycategory_path(assigns(:commoditycategory))
  end

  test "should show commoditycategory" do
    get :show, id: @commoditycategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commoditycategory
    assert_response :success
  end

  test "should update commoditycategory" do
    patch :update, id: @commoditycategory, commoditycategory: { name: @commoditycategory.name }
    assert_redirected_to commoditycategory_path(assigns(:commoditycategory))
  end

  test "should destroy commoditycategory" do
    assert_difference('Commoditycategory.count', -1) do
      delete :destroy, id: @commoditycategory
    end

    assert_redirected_to commoditycategories_path
  end
end
