require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get product_name_url
    assert_response :success
  end

  test "should get brand" do
    get product_brand_url
    assert_response :success
  end

  test "should get item" do
    get product_item_url
    assert_response :success
  end

  test "should get size" do
    get product_size_url
    assert_response :success
  end

end
