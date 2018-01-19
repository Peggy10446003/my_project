require 'test_helper'

class BentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bento = bentos(:one)
  end

  test "should get index" do
    get bentos_url
    assert_response :success
  end

  test "should get new" do
    get new_bento_url
    assert_response :success
  end

  test "should create bento" do
    assert_difference('Bento.count') do
      post bentos_url, params: { bento: { bento_name: @bento.bento_name, content: @bento.content, price: @bento.price } }
    end

    assert_redirected_to bento_url(Bento.last)
  end

  test "should show bento" do
    get bento_url(@bento)
    assert_response :success
  end

  test "should get edit" do
    get edit_bento_url(@bento)
    assert_response :success
  end

  test "should update bento" do
    patch bento_url(@bento), params: { bento: { bento_name: @bento.bento_name, content: @bento.content, price: @bento.price } }
    assert_redirected_to bento_url(@bento)
  end

  test "should destroy bento" do
    assert_difference('Bento.count', -1) do
      delete bento_url(@bento)
    end

    assert_redirected_to bentos_url
  end
end
