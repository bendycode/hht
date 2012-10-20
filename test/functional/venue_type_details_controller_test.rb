require 'test_helper'

class VenueTypeDetailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venue_type_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue_type_detail" do
    assert_difference('VenueTypeDetail.count') do
      post :create, :venue_type_detail => { }
    end

    assert_redirected_to venue_type_detail_path(assigns(:venue_type_detail))
  end

  test "should show venue_type_detail" do
    get :show, :id => venue_type_details(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => venue_type_details(:one).to_param
    assert_response :success
  end

  test "should update venue_type_detail" do
    put :update, :id => venue_type_details(:one).to_param, :venue_type_detail => { }
    assert_redirected_to venue_type_detail_path(assigns(:venue_type_detail))
  end

  test "should destroy venue_type_detail" do
    assert_difference('VenueTypeDetail.count', -1) do
      delete :destroy, :id => venue_type_details(:one).to_param
    end

    assert_redirected_to venue_type_details_path
  end
end
