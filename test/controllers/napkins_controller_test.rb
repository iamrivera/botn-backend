require "test_helper"

class NapkinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @napkin = napkins(:one)
  end

  test "should get index" do
    get napkins_url, as: :json
    assert_response :success
  end

  test "should create napkin" do
    assert_difference('Napkin.count') do
      post napkins_url, params: { napkin: { content: @napkin.content, headline: @napkin.headline, pocket_id: @napkin.pocket_id, sourcelink: @napkin.sourcelink } }, as: :json
    end

    assert_response 201
  end

  test "should show napkin" do
    get napkin_url(@napkin), as: :json
    assert_response :success
  end

  test "should update napkin" do
    patch napkin_url(@napkin), params: { napkin: { content: @napkin.content, headline: @napkin.headline, pocket_id: @napkin.pocket_id, sourcelink: @napkin.sourcelink } }, as: :json
    assert_response 200
  end

  test "should destroy napkin" do
    assert_difference('Napkin.count', -1) do
      delete napkin_url(@napkin), as: :json
    end

    assert_response 204
  end
end
