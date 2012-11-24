require 'test_helper'

class RepentancesControllerTest < ActionController::TestCase
  setup do
    @repentance = repentances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repentances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repentance" do
    assert_difference('Repentance.count') do
      post :create, repentance: { money_donation: @repentance.money_donation, time_donation: @repentance.time_donation }
    end

    assert_redirected_to repentance_path(assigns(:repentance))
  end

  test "should show repentance" do
    get :show, id: @repentance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repentance
    assert_response :success
  end

  test "should update repentance" do
    put :update, id: @repentance, repentance: { money_donation: @repentance.money_donation, time_donation: @repentance.time_donation }
    assert_redirected_to repentance_path(assigns(:repentance))
  end

  test "should destroy repentance" do
    assert_difference('Repentance.count', -1) do
      delete :destroy, id: @repentance
    end

    assert_redirected_to repentances_path
  end
end
