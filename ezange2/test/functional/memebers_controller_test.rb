require 'test_helper'

class MemebersControllerTest < ActionController::TestCase
  setup do
    @memeber = memebers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memebers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memeber" do
    assert_difference('Memeber.count') do
      post :create, memeber: { age: @memeber.age, city: @memeber.city, education_level: @memeber.education_level, email_address: @memeber.email_address, employment_status: @memeber.employment_status, first_name: @memeber.first_name, last_name: @memeber.last_name, number_of_children: @memeber.number_of_children, partner: @memeber.partner, password: @memeber.password, religon: @memeber.religon, state: @memeber.state, street_name: @memeber.street_name, street_number: @memeber.street_number, user_name: @memeber.user_name, zip_code: @memeber.zip_code }
    end

    assert_redirected_to memeber_path(assigns(:memeber))
  end

  test "should show memeber" do
    get :show, id: @memeber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memeber
    assert_response :success
  end

  test "should update memeber" do
    put :update, id: @memeber, memeber: { age: @memeber.age, city: @memeber.city, education_level: @memeber.education_level, email_address: @memeber.email_address, employment_status: @memeber.employment_status, first_name: @memeber.first_name, last_name: @memeber.last_name, number_of_children: @memeber.number_of_children, partner: @memeber.partner, password: @memeber.password, religon: @memeber.religon, state: @memeber.state, street_name: @memeber.street_name, street_number: @memeber.street_number, user_name: @memeber.user_name, zip_code: @memeber.zip_code }
    assert_redirected_to memeber_path(assigns(:memeber))
  end

  test "should destroy memeber" do
    assert_difference('Memeber.count', -1) do
      delete :destroy, id: @memeber
    end

    assert_redirected_to memebers_path
  end
end
