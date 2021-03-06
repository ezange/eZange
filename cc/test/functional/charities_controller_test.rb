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
      post :create, charity: { charity_type: @charity.charity_type, city: @charity.city, country: @charity.country, name: @charity.name, phone_number: @charity.phone_number, state: @charity.state, street_name: @charity.street_name, street_number: @charity.street_number, zipcode: @charity.zipcode }
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
    put :update, id: @charity, charity: { charity_type: @charity.charity_type, city: @charity.city, country: @charity.country, name: @charity.name, phone_number: @charity.phone_number, state: @charity.state, street_name: @charity.street_name, street_number: @charity.street_number, zipcode: @charity.zipcode }
    assert_redirected_to charity_path(assigns(:charity))
  end

  test "should destroy charity" do
    assert_difference('Charity.count', -1) do
      delete :destroy, id: @charity
    end

    assert_redirected_to charities_path
  end
end
