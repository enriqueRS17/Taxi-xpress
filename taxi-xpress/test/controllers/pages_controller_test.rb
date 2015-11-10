require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

  test "should get tarifas" do
    get :tarifas
    assert_response :success
  end

  test "should get servicio" do
    get :servicio
    assert_response :success
  end

  test "should get promociones" do
    get :promociones
    assert_response :success
  end

  test "should get contactanos" do
    get :contactanos
    assert_response :success
  end

  test "should get reclamos" do
    get :reclamos
    assert_response :success
  end

  test "should get tos" do
    get :tos
    assert_response :success
  end

end
