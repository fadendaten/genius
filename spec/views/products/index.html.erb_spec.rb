require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :number => "Number",
        :ean => "Ean",
        :name => "Name",
        :collection => "Collection",
        :program => "Program",
        :size => "Size",
        :colour => "Colour",
        :price_chf => "9.99",
        :price_eur => "9.99"
      ),
      Product.create!(
        :number => "Number",
        :ean => "Ean",
        :name => "Name",
        :collection => "Collection",
        :program => "Program",
        :size => "Size",
        :colour => "Colour",
        :price_chf => "9.99",
        :price_eur => "9.99"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Ean".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Collection".to_s, :count => 2
    assert_select "tr>td", :text => "Program".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
