require 'test_helper'

class TachesControllerTest < ActionController::TestCase
  setup do
    @tach = taches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tach" do
    assert_difference('Tache.count') do
      post :create, tach: { nom: @tach.nom }
    end

    assert_redirected_to tach_path(assigns(:tach))
  end

  test "should show tach" do
    get :show, id: @tach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tach
    assert_response :success
  end

  test "should update tach" do
    put :update, id: @tach, tach: { nom: @tach.nom }
    assert_redirected_to tach_path(assigns(:tach))
  end

  test "should destroy tach" do
    assert_difference('Tache.count', -1) do
      delete :destroy, id: @tach
    end

    assert_redirected_to taches_path
  end
end
