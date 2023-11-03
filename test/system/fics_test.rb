require "application_system_test_case"

class FicsTest < ApplicationSystemTestCase
  setup do
    @fic = fics(:one)
  end

  test "visiting the index" do
    visit fics_url
    assert_selector "h1", text: "Fics"
  end

  test "creating a Fic" do
    visit fics_url
    click_on "New Fic"

    fill_in "Author", with: @fic.author
    fill_in "Chapter count", with: @fic.chapter_count
    fill_in "Date completed", with: @fic.date_completed
    fill_in "Fandom", with: @fic.fandom
    fill_in "Maturity rating", with: @fic.maturity_rating
    fill_in "Ship", with: @fic.ship
    fill_in "Summary", with: @fic.summary
    fill_in "Title", with: @fic.title
    fill_in "Word count", with: @fic.word_count
    click_on "Create Fic"

    assert_text "Fic was successfully created"
    click_on "Back"
  end

  test "updating a Fic" do
    visit fics_url
    click_on "Edit", match: :first

    fill_in "Author", with: @fic.author
    fill_in "Chapter count", with: @fic.chapter_count
    fill_in "Date completed", with: @fic.date_completed
    fill_in "Fandom", with: @fic.fandom
    fill_in "Maturity rating", with: @fic.maturity_rating
    fill_in "Ship", with: @fic.ship
    fill_in "Summary", with: @fic.summary
    fill_in "Title", with: @fic.title
    fill_in "Word count", with: @fic.word_count
    click_on "Update Fic"

    assert_text "Fic was successfully updated"
    click_on "Back"
  end

  test "destroying a Fic" do
    visit fics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fic was successfully destroyed"
  end
end
