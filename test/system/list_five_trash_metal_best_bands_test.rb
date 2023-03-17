require "application_system_test_case"

class ListFiveTrashMetalBestBandsTest < ApplicationSystemTestCase
  setup do
    @list_five_trash_metal_best_band = list_five_trash_metal_best_bands(:one)
  end

  test "visiting the index" do
    visit list_five_trash_metal_best_bands_url
    assert_selector "h1", text: "List five trash metal best bands"
  end

  test "should create list five trash metal best band" do
    visit list_five_trash_metal_best_bands_url
    click_on "New list five trash metal best band"

    fill_in "Description", with: @list_five_trash_metal_best_band.description
    fill_in "Text", with: @list_five_trash_metal_best_band.text
    fill_in "Title", with: @list_five_trash_metal_best_band.title
    click_on "Create List five trash metal best band"

    assert_text "List five trash metal best band was successfully created"
    click_on "Back"
  end

  test "should update List five trash metal best band" do
    visit list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band)
    click_on "Edit this list five trash metal best band", match: :first

    fill_in "Description", with: @list_five_trash_metal_best_band.description
    fill_in "Text", with: @list_five_trash_metal_best_band.text
    fill_in "Title", with: @list_five_trash_metal_best_band.title
    click_on "Update List five trash metal best band"

    assert_text "List five trash metal best band was successfully updated"
    click_on "Back"
  end

  test "should destroy List five trash metal best band" do
    visit list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band)
    click_on "Destroy this list five trash metal best band", match: :first

    assert_text "List five trash metal best band was successfully destroyed"
  end
end
