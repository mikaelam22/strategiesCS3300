require "application_system_test_case"

class StrategiesTest < ApplicationSystemTestCase
  setup do
    @strategy = strategies(:one)
  end

  test "visiting the index" do
    visit strategies_url
    assert_selector "h1", text: "Strategies"
  end

  test "creating a Strategy" do
    visit strategies_url
    click_on "New Strategy"

    fill_in "Agent", with: @strategy.agent
    fill_in "Description", with: @strategy.description
    fill_in "Difficulty", with: @strategy.difficulty
    fill_in "Map", with: @strategy.map
    fill_in "Side", with: @strategy.side
    fill_in "Title", with: @strategy.title
    click_on "Create Strategy"

    assert_text "Strategy was successfully created"
    click_on "Back"
  end

  test "updating a Strategy" do
    visit strategies_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @strategy.agent
    fill_in "Description", with: @strategy.description
    fill_in "Difficulty", with: @strategy.difficulty
    fill_in "Map", with: @strategy.map
    fill_in "Side", with: @strategy.side
    fill_in "Title", with: @strategy.title
    click_on "Update Strategy"

    assert_text "Strategy was successfully updated"
    click_on "Back"
  end

  test "destroying a Strategy" do
    visit strategies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Strategy was successfully destroyed"
  end
end
