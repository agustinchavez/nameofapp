require 'rails_helper'

describe Product do
  context "when the product has comments " do

    before do
      @product = Product.create(:name => "race bike")
       @user = User.create(:first_name => "Lance", :last_name => "Armstrong", :email => "random@doj.com", :password => "Ididit2000")
      @product.comments.create(:rating => 1, :user => @user, :body => "Awful bike!")
      @product.comments.create(:rating => 3, :user => @user, :body => "Average bike!")
      @product.comments.create(:rating => 5, :user => @user, :body => "Awesome bike!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end

  end


  context "The product has a description but no name" do
    before do
      @product = Product.create(:description => "This is the ultimate cruising bike")
    end

    it "will not accept as valid a product which has no name" do
      expect(@product).not_to be_valid
    end

  end

end