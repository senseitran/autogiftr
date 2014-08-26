require 'test_helper'

class OccaisionsControllerTest < ActionController::TestCase
  setup do
    @occaision = occaisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occaisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occaision" do
    assert_difference('Occaision.count') do
      post :create, occaision: { date: @occaision.date, message: @occaision.message, name: @occaision.name, occaision_type: @occaision.occaision_type, recipient_id: @occaision.recipient_id }
    end

    assert_redirected_to occaision_path(assigns(:occaision))
  end

  test "should show occaision" do
    get :show, id: @occaision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @occaision
    assert_response :success
  end

  test "should update occaision" do
    patch :update, id: @occaision, occaision: { date: @occaision.date, message: @occaision.message, name: @occaision.name, occaision_type: @occaision.occaision_type, recipient_id: @occaision.recipient_id }
    assert_redirected_to occaision_path(assigns(:occaision))
  end

  test "should destroy occaision" do
    assert_difference('Occaision.count', -1) do
      delete :destroy, id: @occaision
    end

    assert_redirected_to occaisions_path
  end
end
