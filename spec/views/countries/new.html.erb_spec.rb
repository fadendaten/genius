require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:country, Country.new(
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do

      assert_select "input#country_code[name=?]", "country[code]"

      assert_select "input#country_name[name=?]", "country[name]"
    end
  end
end
