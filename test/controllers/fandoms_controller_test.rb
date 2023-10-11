require "test_helper"

class FandomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fandom = fandoms(:one)
  end

  test "should get index" do
    get fandoms_url
    assert_response :success
  end

  test "should get new" do
    get new_fandom_url
    assert_response :success
  end

  test "should create fandom" do
    assert_difference("Fandom.count") do
      post fandoms_url, params: { fandom: { author_id: @fandom.author_id, category_id: @fandom.category_id, character_id: @fandom.character_id, title: @fandom.title } }
    end

    assert_redirected_to fandom_url(Fandom.last)
  end

  test "should show fandom" do
    get fandom_url(@fandom)
    assert_response :success
  end

  test "should get edit" do
    get edit_fandom_url(@fandom)
    assert_response :success
  end

  test "should update fandom" do
    patch fandom_url(@fandom), params: { fandom: { author_id: @fandom.author_id, category_id: @fandom.category_id, character_id: @fandom.character_id, title: @fandom.title } }
    assert_redirected_to fandom_url(@fandom)
  end

  test "should destroy fandom" do
    assert_difference("Fandom.count", -1) do
      delete fandom_url(@fandom)
    end

    assert_redirected_to fandoms_url
  end
end
