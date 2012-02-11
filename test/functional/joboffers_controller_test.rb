require 'test_helper'

class JoboffersControllerTest < ActionController::TestCase
  setup do
    @joboffer = joboffers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joboffers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joboffer" do
    assert_difference('Joboffer.count') do
      post :create, joboffer: @joboffer.attributes
    end

    assert_redirected_to joboffer_path(assigns(:joboffer))
  end

  test "should show joboffer" do
    get :show, id: @joboffer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joboffer
    assert_response :success
  end

  test "should update joboffer" do
    put :update, id: @joboffer, joboffer: @joboffer.attributes
    assert_redirected_to joboffer_path(assigns(:joboffer))
  end

  test "should destroy joboffer" do
    assert_difference('Joboffer.count', -1) do
      delete :destroy, id: @joboffer
    end

    assert_redirected_to joboffers_path
  end
end
