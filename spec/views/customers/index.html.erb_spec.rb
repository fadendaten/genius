require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :gender_id => 2,
        :title => "Title",
        :name => "Name",
        :pre_name => "Pre Name",
        :street => "Street",
        :additional_line => "Additional Line",
        :zip_code => "Zip Code",
        :string => "String",
        :city => "City",
        :country_id => 3,
        :language_id => 4,
        :phone_number => "Phone Number",
        :cell_phone_number => "Cell Phone Number",
        :email => "Email"
      ),
      Customer.create!(
        :gender_id => 2,
        :title => "Title",
        :name => "Name",
        :pre_name => "Pre Name",
        :street => "Street",
        :additional_line => "Additional Line",
        :zip_code => "Zip Code",
        :string => "String",
        :city => "City",
        :country_id => 3,
        :language_id => 4,
        :phone_number => "Phone Number",
        :cell_phone_number => "Cell Phone Number",
        :email => "Email"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pre Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Additional Line".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
