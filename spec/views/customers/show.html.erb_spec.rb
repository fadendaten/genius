require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Pre Name/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Additional Line/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Cell Phone Number/)
    expect(rendered).to match(/Email/)
  end
end
