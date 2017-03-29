require 'rails_helper'

RSpec.describe Article, type: :model do
  
	before(:each) do 
		@article = Article.create!(title: "test title", text: "random text here")
	end

	describe "validations" do 
		it "should not let article be created without a title" do 
			@article.title = nil 
			expect(@article).to_not be_valid 
		end

		it "should not let article be created without text" do 
			@article.text = nil
			expect(@article).to_not be_valid
		end
	end

end
