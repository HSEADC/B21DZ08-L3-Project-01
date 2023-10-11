require "application_system_test_case"

class FandomCharactersTest < ApplicationSystemTestCase
  setup do
    @fandom_character = fandom_characters(:one)
  end

  test "visiting the index" do
    visit fandom_characters_url
    assert_selector "h1", text: "Fandom characters"
  end

  test "should create fandom character" do
    visit fandom_characters_url
    click_on "New fandom character"

    fill_in "Fandom", with: @fandom_character.fandom_id
    fill_in "Name", with: @fandom_character.name
    click_on "Create Fandom character"

    assert_text "Fandom character was successfully created"
    click_on "Back"
  end

  test "should update Fandom character" do
    visit fandom_character_url(@fandom_character)
    click_on "Edit this fandom character", match: :first

    fill_in "Fandom", with: @fandom_character.fandom_id
    fill_in "Name", with: @fandom_character.name
    click_on "Update Fandom character"

    assert_text "Fandom character was successfully updated"
    click_on "Back"
  end

  test "should destroy Fandom character" do
    visit fandom_character_url(@fandom_character)
    click_on "Destroy this fandom character", match: :first

    assert_text "Fandom character was successfully destroyed"
  end
end
