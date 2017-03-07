require 'test_helper'

class StandardProductUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standard_product_unit = standard_product_units(:one)
  end

  test "should get index" do
    get standard_product_units_url
    assert_response :success
  end

  test "should get new" do
    get new_standard_product_unit_url
    assert_response :success
  end

  test "should create standard_product_unit" do
    assert_difference('StandardProductUnit.count') do
      post standard_product_units_url, params: { standard_product_unit: { description: @standard_product_unit.description, image_url: @standard_product_unit.image_url, title: @standard_product_unit.title } }
    end

    assert_redirected_to standard_product_unit_url(StandardProductUnit.last)
  end

  test "should show standard_product_unit" do
    get standard_product_unit_url(@standard_product_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_standard_product_unit_url(@standard_product_unit)
    assert_response :success
  end

  test "should update standard_product_unit" do
    patch standard_product_unit_url(@standard_product_unit), params: { standard_product_unit: { description: @standard_product_unit.description, image_url: @standard_product_unit.image_url, title: @standard_product_unit.title } }
    assert_redirected_to standard_product_unit_url(@standard_product_unit)
  end

  test "should destroy standard_product_unit" do
    assert_difference('StandardProductUnit.count', -1) do
      delete standard_product_unit_url(@standard_product_unit)
    end

    assert_redirected_to standard_product_units_url
  end
end
