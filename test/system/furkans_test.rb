require "application_system_test_case"

class FurkansTest < ApplicationSystemTestCase
  setup do
    @furkan = furkans(:one)
  end

  test "visiting the index" do
    visit furkans_url
    assert_selector "h1", text: "Furkans"
  end

  test "creating a Furkan" do
    visit furkans_url
    click_on "New Furkan"

    click_on "Create Furkan"

    assert_text "Furkan was successfully created"
    click_on "Back"
  end

  test "updating a Furkan" do
    visit furkans_url
    click_on "Edit", match: :first

    click_on "Update Furkan"

    assert_text "Furkan was successfully updated"
    click_on "Back"
  end

  test "destroying a Furkan" do
    visit furkans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Furkan was successfully destroyed"
  end
end
