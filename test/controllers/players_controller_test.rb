require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { address1: @player.address1, address2: @player.address2, age: @player.age, country_code: @player.country_code, email: @player.email, grade_id: @player.grade_id, name: @player.name, phone: @player.phone, postal_code: @player.postal_code, suburb: @player.suburb }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { address1: @player.address1, address2: @player.address2, age: @player.age, country_code: @player.country_code, email: @player.email, grade_id: @player.grade_id, name: @player.name, phone: @player.phone, postal_code: @player.postal_code, suburb: @player.suburb }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
