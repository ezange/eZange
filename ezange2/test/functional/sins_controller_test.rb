require 'test_helper'

class SinsControllerTest < ActionController::TestCase
  setup do
    @sin = sins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sin" do
    assert_difference('Sin.count') do
      post :create, sin: { member_id: @sin.member_id, post_date: @sin.post_date, post_time: @sin.post_time, sin: @sin.sin, sin_city: @sin.sin_city, sin_country: @sin.sin_country, sin_date: @sin.sin_date, sin_state: @sin.sin_state, sin_street_name: @sin.sin_street_name, sin_street_number: @sin.sin_street_number, sin_time: @sin.sin_time, sin_zip: @sin.sin_zip, title: @sin.title }
    end

    assert_redirected_to sin_path(assigns(:sin))
  end

  test "should show sin" do
    get :show, id: @sin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sin
    assert_response :success
  end

  test "should update sin" do
    put :update, id: @sin, sin: { member_id: @sin.member_id, post_date: @sin.post_date, post_time: @sin.post_time, sin: @sin.sin, sin_city: @sin.sin_city, sin_country: @sin.sin_country, sin_date: @sin.sin_date, sin_state: @sin.sin_state, sin_street_name: @sin.sin_street_name, sin_street_number: @sin.sin_street_number, sin_time: @sin.sin_time, sin_zip: @sin.sin_zip, title: @sin.title }
    assert_redirected_to sin_path(assigns(:sin))
  end

  test "should destroy sin" do
    assert_difference('Sin.count', -1) do
      delete :destroy, id: @sin
    end

    assert_redirected_to sins_path
  end
end
