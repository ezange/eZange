require 'test_helper'

class CharitiesControllerTest < ActionController::TestCase
  setup do
    @charity = charities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charity" do
    assert_difference('Charity.count') do
      post :create, charity: { charity_city: @charity.charity_city, charity_country: @charity.charity_country, charity_name: @charity.charity_name, charity_phone_number: @charity.charity_phone_number, charity_stat: @charity.charity_stat, charity_street_name: @charity.charity_street_name, charity_street_number: @charity.charity_street_number, charity_type: @charity.charity_type, charity_zip: @charity.charity_zip }
    end

    assert_redirected_to charity_path(assigns(:charity))
  end

  test "should show charity" do
    get :show, id: @charity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charity
    assert_response :success
  end

  test "should update charity" do
    put :update, id: @charity, charity: { charity_city: @charity.charity_city, charity_country: @charity.charity_country, charity_name: @charity.charity_name, charity_phone_number: @charity.charity_phone_number, charity_stat: @charity.charity_stat, charity_street_name: @charity.charity_street_name, charity_street_number: @charity.charity_street_number, charity_type: @charity.charity_type, charity_zip: @charity.charity_zip }
    assert_redirected_to charity_path(assigns(:charity))
  end

  test "should destroy charity" do
    assert_difference('Charity.count', -1) do
      delete :destroy, id: @charity
    end

    assert_redirected_to charities_path
  end
end
