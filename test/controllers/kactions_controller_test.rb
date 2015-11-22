require 'test_helper'

class KactionsControllerTest < ActionController::TestCase
  setup do
    @kaction = kactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kaction" do
    assert_difference('Kaction.count') do
      post :create, kaction: {  }
    end

    assert_redirected_to kaction_path(assigns(:kaction))
  end

  test "should show kaction" do
    get :show, id: @kaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kaction
    assert_response :success
  end

  test "should update kaction" do
    patch :update, id: @kaction, kaction: {  }
    assert_redirected_to kaction_path(assigns(:kaction))
  end

  test "should destroy kaction" do
    assert_difference('Kaction.count', -1) do
      delete :destroy, id: @kaction
    end

    assert_redirected_to kactions_path
  end
end
