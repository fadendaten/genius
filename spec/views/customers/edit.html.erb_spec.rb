require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :gender_id => 1,
      :title => "MyString",
      :name => "MyString",
      :pre_name => "MyString",
      :street => "MyString",
      :additional_line => "MyString",
      :zip_code => "MyString",
      :string => "MyString",
      :city => "MyString",
      :country_id => 1,
      :language_id => 1,
      :phone_number => "MyString",
      :cell_phone_number => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_gender_id[name=?]", "customer[gender_id]"

      assert_select "input#customer_title[name=?]", "customer[title]"

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_pre_name[name=?]", "customer[pre_name]"

      assert_select "input#customer_street[name=?]", "customer[street]"

      assert_select "input#customer_additional_line[name=?]", "customer[additional_line]"

      assert_select "input#customer_zip_code[name=?]", "customer[zip_code]"

      assert_select "input#customer_string[name=?]", "customer[string]"

      assert_select "input#customer_city[name=?]", "customer[city]"

      assert_select "input#customer_country_id[name=?]", "customer[country_id]"

      assert_select "input#customer_language_id[name=?]", "customer[language_id]"

      assert_select "input#customer_phone_number[name=?]", "customer[phone_number]"

      assert_select "input#customer_cell_phone_number[name=?]", "customer[cell_phone_number]"

      assert_select "input#customer_email[name=?]", "customer[email]"
    end
  end
end
