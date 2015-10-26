require 'rails_helper'

describe Product do

  context "when the product has comments" do

    before do
      @product = FactoryGirl.create(:product)
      @user = FactoryGirl.create(:user)
      @comment = FactoryGirl.create(:comment, rating: "1")
      @comment2 = FactoryGirl.create(:comment, rating: "3")
      @comment3 = FactoryGirl.create(:comment, rating: "5")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "product with description but no name" do

    before do
      @product = Product.create(:name => nil, :description => "race bike")
    end

    it "will not pass validation without a name" do
      expect(@product).not_to be_valid
    end
  end
end