require "test_helper"

class FandomCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fandom_character = fandom_characters(:one)
  end

  test "should get index" do
    get fandom_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_fandom_character_url
    assert_response :success
  end

  test "should create fandom_character" do
    assert_difference("FandomCharacter.count") do
      post fandom_characters_url, params: { fandom_character: { fandom_id: @fandom_character.fandom_id, name: @fandom_character.name } }
    end

    assert_redirected_to fandom_character_url(FandomCharacter.last)
  end

  test "should show fandom_character" do
    get fandom_character_url(@fandom_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_fandom_character_url(@fandom_character)
    assert_response :success
  end

  test "should update fandom_character" do
    patch fandom_character_url(@fandom_character), params: { fandom_character: { fandom_id: @fandom_character.fandom_id, name: @fandom_character.name } }
    assert_redirected_to fandom_character_url(@fandom_character)
  end

  test "should destroy fandom_character" do
    assert_difference("FandomCharacter.count", -1) do
      delete fandom_character_url(@fandom_character)
    end

    assert_redirected_to fandom_characters_url
  end
end
