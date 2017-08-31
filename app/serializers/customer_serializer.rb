class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :gender_id, :title, :name, :pre_name, :street, :additional_line, :zip_code, :string, :city, :country_id, :language_id, :phone_number, :cell_phone_number, :email, :birthday
end
