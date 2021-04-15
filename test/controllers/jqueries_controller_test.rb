require 'test_helper'

class JqueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jquery = jqueries(:one)
  end

  test "should get index" do
    get jqueries_url
    assert_response :success
  end

  test "should get new" do
    get new_jquery_url
    assert_response :success
  end

  test "should create jquery" do
    assert_difference('Jquery.count') do
      post jqueries_url, params: { jquery: {  } }
    end

    assert_redirected_to jquery_url(Jquery.last)
  end

  test "should show jquery" do
    get jquery_url(@jquery)
    assert_response :success
  end

  test "should get edit" do
    get edit_jquery_url(@jquery)
    assert_response :success
  end

  test "should update jquery" do
    patch jquery_url(@jquery), params: { jquery: {  } }
    assert_redirected_to jquery_url(@jquery)
  end

  test "should destroy jquery" do
    assert_difference('Jquery.count', -1) do
      delete jquery_url(@jquery)
    end

    assert_redirected_to jqueries_url
  end
end
