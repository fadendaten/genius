class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :gender_id
      t.string :title
      t.string :name
      t.string :pre_name
      t.string :street
      t.string :additional_line
      t.string :zip_code
      t.string :string
      t.string :city
      t.integer :country_id
      t.integer :language_id
      t.string :phone_number
      t.string :cell_phone_number
      t.string :email
      t.date :birthday
      t.boolean :newsletter
      t.boolean :mail
      t.boolean :employee

      t.timestamps null: false
    end
  end
end
