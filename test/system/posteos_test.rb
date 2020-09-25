require "application_system_test_case"

class PosteosTest < ApplicationSystemTestCase
  setup do
    @posteo = posteos(:one)
  end

  test "visiting the index" do
    visit posteos_url
    assert_selector "h1", text: "Posteos"
  end

  test "creating a Posteo" do
    visit posteos_url
    click_on "New Posteo"

    fill_in "Cuerpo", with: @posteo.cuerpo
    fill_in "Titulo", with: @posteo.titulo
    click_on "Create Posteo"

    assert_text "Posteo was successfully created"
    click_on "Back"
  end

  test "updating a Posteo" do
    visit posteos_url
    click_on "Edit", match: :first

    fill_in "Cuerpo", with: @posteo.cuerpo
    fill_in "Titulo", with: @posteo.titulo
    click_on "Update Posteo"

    assert_text "Posteo was successfully updated"
    click_on "Back"
  end

  test "destroying a Posteo" do
    visit posteos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Posteo was successfully destroyed"
  end
end
