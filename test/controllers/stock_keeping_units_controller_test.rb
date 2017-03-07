require 'test_helper'

class StockKeepingUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_keeping_unit = stock_keeping_units(:one)
  end

  test "should get index" do
    get stock_keeping_units_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_keeping_unit_url
    assert_response :success
  end

  test "should create stock_keeping_unit" do
    assert_difference('StockKeepingUnit.count') do
      post stock_keeping_units_url, params: { stock_keeping_unit: { description: @stock_keeping_unit.description, price: @stock_keeping_unit.price, standard_product_unit_id: @stock_keeping_unit.standard_product_unit_id, storage: @stock_keeping_unit.storage, title: @stock_keeping_unit.title } }
    end

    assert_redirected_to stock_keeping_unit_url(StockKeepingUnit.last)
  end

  test "should show stock_keeping_unit" do
    get stock_keeping_unit_url(@stock_keeping_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_keeping_unit_url(@stock_keeping_unit)
    assert_response :success
  end

  test "should update stock_keeping_unit" do
    patch stock_keeping_unit_url(@stock_keeping_unit), params: { stock_keeping_unit: { description: @stock_keeping_unit.description, price: @stock_keeping_unit.price, standard_product_unit_id: @stock_keeping_unit.standard_product_unit_id, storage: @stock_keeping_unit.storage, title: @stock_keeping_unit.title } }
    assert_redirected_to stock_keeping_unit_url(@stock_keeping_unit)
  end

  test "should destroy stock_keeping_unit" do
    assert_difference('StockKeepingUnit.count', -1) do
      delete stock_keeping_unit_url(@stock_keeping_unit)
    end

    assert_redirected_to stock_keeping_units_url
  end
end
