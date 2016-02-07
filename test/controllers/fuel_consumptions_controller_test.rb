require 'test_helper'

class FuelConsumptionsControllerTest < ActionController::TestCase
  setup do
    @fuel_consumption = fuel_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuel_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuel_consumption" do
    assert_difference('FuelConsumption.count') do
      post :create, fuel_consumption: { distance: @fuel_consumption.distance, fuel_amount: @fuel_consumption.fuel_amount }
    end

    assert_redirected_to fuel_consumption_path(assigns(:fuel_consumption))
  end

  test "should show fuel_consumption" do
    get :show, id: @fuel_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuel_consumption
    assert_response :success
  end

  test "should update fuel_consumption" do
    patch :update, id: @fuel_consumption, fuel_consumption: { distance: @fuel_consumption.distance, fuel_amount: @fuel_consumption.fuel_amount }
    assert_redirected_to fuel_consumption_path(assigns(:fuel_consumption))
  end

  test "should destroy fuel_consumption" do
    assert_difference('FuelConsumption.count', -1) do
      delete :destroy, id: @fuel_consumption
    end

    assert_redirected_to fuel_consumptions_path
  end
end
