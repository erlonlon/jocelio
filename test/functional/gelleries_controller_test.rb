require 'test_helper'

class GelleriesControllerTest < ActionController::TestCase
  setup do
    @gellery = gelleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gelleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gellery" do
    assert_difference('Gellery.count') do
      post :create, gellery: { : @gellery., : @gellery., : @gellery., : @gellery., data_cadastro: @gellery.data_cadastro, foto_content_type,: @gellery.foto_content_type,, foto_file_name,: @gellery.foto_file_name,, foto_file_size,: @gellery.foto_file_size,, foto_updated_at,: @gellery.foto_updated_at,, migrate=false: @gellery.migrate=false, nome: @gellery.nome }
    end

    assert_redirected_to gellery_path(assigns(:gellery))
  end

  test "should show gellery" do
    get :show, id: @gellery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gellery
    assert_response :success
  end

  test "should update gellery" do
    put :update, id: @gellery, gellery: { : @gellery., : @gellery., : @gellery., : @gellery., data_cadastro: @gellery.data_cadastro, foto_content_type,: @gellery.foto_content_type,, foto_file_name,: @gellery.foto_file_name,, foto_file_size,: @gellery.foto_file_size,, foto_updated_at,: @gellery.foto_updated_at,, migrate=false: @gellery.migrate=false, nome: @gellery.nome }
    assert_redirected_to gellery_path(assigns(:gellery))
  end

  test "should destroy gellery" do
    assert_difference('Gellery.count', -1) do
      delete :destroy, id: @gellery
    end

    assert_redirected_to gelleries_path
  end
end
