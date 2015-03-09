class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nama
      t.string :code
      t.text :alamat
      t.string :no_telp
      t.string :pin_bb
      t.string :facebook
      t.string :email

      t.timestamps null: false
    end
  end
end
