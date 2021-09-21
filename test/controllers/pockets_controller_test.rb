require "test_helper"

class PocketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocket = pockets(:one)
  end

  test "should get index" do
    get pockets_url, as: :json
    assert_response :success
  end

  test "should create pocket" do
    assert_difference('Pocket.count') do
      post pockets_url, params: { pocket: { description: @pocket.description, imglink: @pocket.imglink, name: @pocket.name } }, as: :json
    end

    assert_response 201
  end

  test "should show pocket" do
    get pocket_url(@pocket), as: :json
    assert_response :success
  end

  test "should update pocket" do
    patch pocket_url(@pocket), params: { pocket: { description: @pocket.description, imglink: @pocket.imglink, name: @pocket.name } }, as: :json
    assert_response 200
  end

  test "should destroy pocket" do
    assert_difference('Pocket.count', -1) do
      delete pocket_url(@pocket), as: :json
    end

    assert_response 204
  end
end
