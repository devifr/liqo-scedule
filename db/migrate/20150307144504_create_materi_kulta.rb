class CreateMateriKulta < ActiveRecord::Migration
  def change
    create_table :materi_kulta do |t|
      t.string :type
      t.string :title

      t.timestamps null: false
    end
  end
end
