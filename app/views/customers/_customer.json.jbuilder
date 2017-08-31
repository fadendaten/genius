json.extract! customer, :id, :gender_id, :title, :name, :pre_name, :street, :additional_line, :zip_code, :string, :city, :country_id, :language_id, :phone_number, :cell_phone_number, :email, :birthday, :created_at, :updated_at
json.url customer_url(customer, format: :json)
