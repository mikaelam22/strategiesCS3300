require "rails_helper"


describe "Strategy Attribute Requirements on Create", :type => :model do
  context "validation tests" do

    # missing title
    it "ensures the title is present when creating strategy" do
      strategy = Strategy.new(description: "Content of the description", agent: "some agent", map: "some map", side: "some side", difficulty: 1)
      expect(strategy.valid?).to eq(false)
    end
    it "should not be able to save strategy when title missing" do
      strategy = Strategy.new(description: "Content of the description", agent: "some agent", map: "some map", side: "some side", difficulty: 1)
      expect(strategy.save).to eq(false)
    end

    # missing description
    it "ensures the description is present when creating strategy" do 
        strategy = Strategy.new(title: "some title", agent: "some agent", map: "some map", side: "some side", difficulty: 1)
        expect(strategy.valid?).to eq(false)
    end
    it "should not be able to save strategy when description is missing" do
        strategy = Strategy.new(title: "some title", agent: "some agent", map: "some map", side: "some side", difficulty: 1)
        expect(strategy.save).to eq(false)
      end

    # missing agent
    it "ensures the agent is present when creating strategy" do 
        strategy = Strategy.new(title: "Title", description: "Content of the description", map: "some map", side: "some side", difficulty: 1)
        expect(strategy.valid?).to eq(false)
    end
    it "should not be able to save strategy when agent is missing" do
        strategy = Strategy.new(title: "Title", description: "Content of the description", map: "some map", side: "some side", difficulty: 1)
        expect(strategy.save).to eq(false)
    end

    # missing map
    it "ensures the map is present when creating strategy" do 
        strategy = Strategy.new(title: "Title", description: "Content of the description", agent: "some agent", side: "some side", difficulty: 1)
        expect(strategy.valid?).to eq(false)
    end
    it "should not be able to save strategy when map is missing" do
        strategy = Strategy.new(title: "Title", description: "Content of the description", agent: "some agent", side: "some side", difficulty: 1)
        expect(strategy.save).to eq(false)
    end

    # missing side
    it "ensures the side is present when creating strategy" do 
        strategy = Strategy.new(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", difficulty: 1)
        expect(strategy.valid?).to eq(false)
    end
    it "should not be able to save strategy when side is missing" do
        strategy = Strategy.new(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", difficulty: 1)
        expect(strategy.save).to eq(false)
    end

    # difficulty will always be present due to the nature of the form
    
    # correct format
    it "should be able to save strategy when all attributes present" do
      strategy = Strategy.new(title: "Title", description: "Content of the description", agent: "some agent", map: "some map", side: "some side", difficulty: 1)
      expect(strategy.save).to eq(true)
    end
    
  end
end


describe "Strategy Attribute Requirements on Edit", :type => :model do
  context "Edit strategy" do  
    before (:each) do
      @strategy = Strategy.create(title: "Title", description: "Content of the description")
 
      end
    it "ensures the title is present when editing strategy" do
      @strategy.update(:title => "New Title")
      expect(@strategy.title == "New Title")
    end
  end
end