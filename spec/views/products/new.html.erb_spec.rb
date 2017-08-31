require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :number => "MyString",
      :ean => "MyString",
      :name => "MyString",
      :collection => "MyString",
      :program => "MyString",
      :size => "MyString",
      :colour => "MyString",
      :price_chf => "9.99",
      :price_eur => "9.99"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_number[name=?]", "product[number]"

      assert_select "input#product_ean[name=?]", "product[ean]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_collection[name=?]", "product[collection]"

      assert_select "input#product_program[name=?]", "product[program]"

      assert_select "input#product_size[name=?]", "product[size]"

      assert_select "input#product_colour[name=?]", "product[colour]"

      assert_select "input#product_price_chf[name=?]", "product[price_chf]"

      assert_select "input#product_price_eur[name=?]", "product[price_eur]"
    end
  end
end
