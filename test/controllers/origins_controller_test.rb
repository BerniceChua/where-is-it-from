require 'test_helper'

class OriginsControllerTest < ActionController::TestCase
  setup do
    @origin = origins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origin" do
    assert_difference('Origin.count') do
      post :create, origin: { country: @origin.country, region: @origin.region }
    end

    assert_redirected_to origin_path(assigns(:origin))
  end

  test "should show origin" do
    get :show, id: @origin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @origin
    assert_response :success
  end

  test "should update origin" do
    patch :update, id: @origin, origin: { country: @origin.country, region: @origin.region }
    assert_redirected_to origin_path(assigns(:origin))
  end

  test "should destroy origin" do
    assert_difference('Origin.count', -1) do
      delete :destroy, id: @origin
    end

    assert_redirected_to origins_path
  end
end
