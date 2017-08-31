require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :number => "Number",
      :ean => "Ean",
      :name => "Name",
      :collection => "Collection",
      :program => "Program",
      :size => "Size",
      :colour => "Colour",
      :price_chf => "9.99",
      :price_eur => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Ean/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Collection/)
    expect(rendered).to match(/Program/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Colour/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
