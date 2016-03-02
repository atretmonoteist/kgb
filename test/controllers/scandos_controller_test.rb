require 'test_helper'

class ScandosControllerTest < ActionController::TestCase
  setup do
    @scando = scandos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scandos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scando" do
    assert_difference('Scando.count') do
      post :create, scando: { do_address: @scando.do_address, do_description: @scando.do_description, do_fax: @scando.do_fax, do_name: @scando.do_name, do_phone: @scando.do_phone }
    end

    assert_redirected_to scando_path(assigns(:scando))
  end

  test "should show scando" do
    get :show, id: @scando
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scando
    assert_response :success
  end

  test "should update scando" do
    patch :update, id: @scando, scando: { do_address: @scando.do_address, do_description: @scando.do_description, do_fax: @scando.do_fax, do_name: @scando.do_name, do_phone: @scando.do_phone }
    assert_redirected_to scando_path(assigns(:scando))
  end

  test "should destroy scando" do
    assert_difference('Scando.count', -1) do
      delete :destroy, id: @scando
    end

    assert_redirected_to scandos_path
  end
end
