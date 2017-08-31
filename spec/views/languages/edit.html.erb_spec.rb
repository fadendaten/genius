require 'rails_helper'

RSpec.describe "languages/edit", type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
      :name => "MyString",
      :i18n_code => "MyString"
    ))
  end

  it "renders the edit language form" do
    render

    assert_select "form[action=?][method=?]", language_path(@language), "post" do

      assert_select "input#language_name[name=?]", "language[name]"

      assert_select "input#language_i18n_code[name=?]", "language[i18n_code]"
    end
  end
end
