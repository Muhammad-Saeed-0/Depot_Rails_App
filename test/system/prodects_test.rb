require "application_system_test_case"

class ProdectsTest < ApplicationSystemTestCase
  setup do
    @prodect = prodects(:one)
  end

  test "visiting the index" do
    visit prodects_url
    assert_selector "h1", text: "Prodects"
  end

  test "should create prodect" do
    visit prodects_url
    click_on "New prodect"

    fill_in "Description", with: @prodect.description
    fill_in "Image url", with: @prodect.image_url
    fill_in "Price", with: @prodect.price
    fill_in "Title", with: @prodect.title
    click_on "Create Prodect"

    assert_text "Prodect was successfully created"
    click_on "Back"
  end

  test "should update Prodect" do
    visit prodect_url(@prodect)
    click_on "Edit this prodect", match: :first

    fill_in "Description", with: @prodect.description
    fill_in "Image url", with: @prodect.image_url
    fill_in "Price", with: @prodect.price
    fill_in "Title", with: @prodect.title
    click_on "Update Prodect"

    assert_text "Prodect was successfully updated"
    click_on "Back"
  end

  test "should destroy Prodect" do
    visit prodect_url(@prodect)
    click_on "Destroy this prodect", match: :first

    assert_text "Prodect was successfully destroyed"
  end
end
