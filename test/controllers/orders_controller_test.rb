require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { contact_person: @order.contact_person, contact_phone_no: @order.contact_phone_no, datetime: @order.datetime, duration: @order.duration, fee: @order.fee, hospital: @order.hospital, location: @order.location, server_grade: @order.server_grade, server_id: @order.server_id, user_id: @order.user_id }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { contact_person: @order.contact_person, contact_phone_no: @order.contact_phone_no, datetime: @order.datetime, duration: @order.duration, fee: @order.fee, hospital: @order.hospital, location: @order.location, server_grade: @order.server_grade, server_id: @order.server_id, user_id: @order.user_id }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end