require "test_helper"

class FicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fic = fics(:one)
  end

  test "should get index" do
    get fics_url
    assert_response :success
  end

  test "should get new" do
    get new_fic_url
    assert_response :success
  end

  test "should create fic" do
    assert_difference('Fic.count') do
      post fics_url, params: { fic: { author: @fic.author, chapter_count: @fic.chapter_count, date_completed: @fic.date_completed, fandom: @fic.fandom, maturity_rating: @fic.maturity_rating, ship: @fic.ship, summary: @fic.summary, title: @fic.title, word_count: @fic.word_count } }
    end

    assert_redirected_to fic_url(Fic.last)
  end

  test "should show fic" do
    get fic_url(@fic)
    assert_response :success
  end

  test "should get edit" do
    get edit_fic_url(@fic)
    assert_response :success
  end

  test "should update fic" do
    patch fic_url(@fic), params: { fic: { author: @fic.author, chapter_count: @fic.chapter_count, date_completed: @fic.date_completed, fandom: @fic.fandom, maturity_rating: @fic.maturity_rating, ship: @fic.ship, summary: @fic.summary, title: @fic.title, word_count: @fic.word_count } }
    assert_redirected_to fic_url(@fic)
  end

  test "should destroy fic" do
    assert_difference('Fic.count', -1) do
      delete fic_url(@fic)
    end

    assert_redirected_to fics_url
  end
end
