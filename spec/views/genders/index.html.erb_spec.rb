require 'rails_helper'

RSpec.describe "genders/index", type: :view do
  before(:each) do
    assign(:genders, [
      Gender.create!(
        :name => "Name"
      ),
      Gender.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of genders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
