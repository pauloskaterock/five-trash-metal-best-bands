require "test_helper"

class ListFiveTrashMetalBestBandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_five_trash_metal_best_band = list_five_trash_metal_best_bands(:one)
  end

  test "should get index" do
    get list_five_trash_metal_best_bands_url
    assert_response :success
  end

  test "should get new" do
    get new_list_five_trash_metal_best_band_url
    assert_response :success
  end

  test "should create list_five_trash_metal_best_band" do
    assert_difference("ListFiveTrashMetalBestBand.count") do
      post list_five_trash_metal_best_bands_url, params: { list_five_trash_metal_best_band: { description: @list_five_trash_metal_best_band.description, text: @list_five_trash_metal_best_band.text, title: @list_five_trash_metal_best_band.title } }
    end

    assert_redirected_to list_five_trash_metal_best_band_url(ListFiveTrashMetalBestBand.last)
  end

  test "should show list_five_trash_metal_best_band" do
    get list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band)
    assert_response :success
  end

  test "should update list_five_trash_metal_best_band" do
    patch list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band), params: { list_five_trash_metal_best_band: { description: @list_five_trash_metal_best_band.description, text: @list_five_trash_metal_best_band.text, title: @list_five_trash_metal_best_band.title } }
    assert_redirected_to list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band)
  end

  test "should destroy list_five_trash_metal_best_band" do
    assert_difference("ListFiveTrashMetalBestBand.count", -1) do
      delete list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band)
    end

    assert_redirected_to list_five_trash_metal_best_bands_url
  end
end
