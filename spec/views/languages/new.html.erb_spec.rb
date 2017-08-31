require 'rails_helper'

RSpec.describe "languages/new", type: :view do
  before(:each) do
    assign(:language, Language.new(
      :name => "MyString",
      :i18n_code => "MyString"
    ))
  end

  it "renders new language form" do
    render

    assert_select "form[action=?][method=?]", languages_path, "post" do

      assert_select "input#language_name[name=?]", "language[name]"

      assert_select "input#language_i18n_code[name=?]", "language[i18n_code]"
    end
  end
end
