require "rails_helper"


RSpec.feature "Strategies", type: :feature do
    context "Update strategy" do
      let!(:strategy) { Strategy.create(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", difficulty: 1) }
      before(:each) do
        visit edit_strategy_path(strategy)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Strategy"
        expect(page).to have_content("Strategy was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Update Strategy"
        expect(page).to have_content("Description can't be blank")
      end
    end
end