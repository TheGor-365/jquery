require "application_system_test_case"

class JqueriesTest < ApplicationSystemTestCase
  setup do
    @jquery = jqueries(:one)
  end

  test "visiting the index" do
    visit jqueries_url
    assert_selector "h1", text: "Jqueries"
  end

  test "creating a Jquery" do
    visit jqueries_url
    click_on "New Jquery"

    click_on "Create Jquery"

    assert_text "Jquery was successfully created"
    click_on "Back"
  end

  test "updating a Jquery" do
    visit jqueries_url
    click_on "Edit", match: :first

    click_on "Update Jquery"

    assert_text "Jquery was successfully updated"
    click_on "Back"
  end

  test "destroying a Jquery" do
    visit jqueries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jquery was successfully destroyed"
  end
end
