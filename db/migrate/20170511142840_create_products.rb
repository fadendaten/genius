class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :number
      t.string :ean
      t.string :name
      t.string :collection
      t.string :program
      t.string :size
      t.string :colour
      t.decimal :price_chf, :precision => 8, :scale => 2
      t.decimal :price_eur, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
