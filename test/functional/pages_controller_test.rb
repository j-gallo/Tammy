require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get dad" do
    get :dad
    assert_response :success
  end

end
