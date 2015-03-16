require 'test_helper'

class LInksControllerTest < ActionController::TestCase
  setup do
    @l_ink = l_inks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l_inks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l_ink" do
    assert_difference('LInk.count') do
      post :create, l_ink: { title: @l_ink.title, url: @l_ink.url }
    end

    assert_redirected_to l_ink_path(assigns(:l_ink))
  end

  test "should show l_ink" do
    get :show, id: @l_ink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l_ink
    assert_response :success
  end

  test "should update l_ink" do
    patch :update, id: @l_ink, l_ink: { title: @l_ink.title, url: @l_ink.url }
    assert_redirected_to l_ink_path(assigns(:l_ink))
  end

  test "should destroy l_ink" do
    assert_difference('LInk.count', -1) do
      delete :destroy, id: @l_ink
    end

    assert_redirected_to l_inks_path
  end
end
