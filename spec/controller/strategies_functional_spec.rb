require "rails_helper"


RSpec.describe StrategiesController, :type => :controller do
    describe "test web requests" do

        login_user
        
        # index
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end

        # show
        context "GET #show" do
            let!(:strategy) { Strategy.create(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", difficulty: 1) }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        # update
        context "PATCH #update" do
            let!(:strategy) { Strategy.create(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", difficulty: 1) }
            it "returns a success response" do
                strategy.update(title: "new title", description: "new description", agent: "new agent", map: "new map", difficulty: 2)
                expect(response).to have_http_status(:ok)
            end
        end

        # delete
        context "DELETE #delete" do
            let!(:strategy) { Strategy.create(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", difficulty: 1) }
            it "returns a success response" do
                strategy.delete
                expect(response).to have_http_status(:ok)
            end
        end
    end
end