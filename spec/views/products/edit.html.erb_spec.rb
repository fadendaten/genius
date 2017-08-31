require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
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

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

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
