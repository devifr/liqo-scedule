class CreateMateriTalaqis < ActiveRecord::Migration
  def change
    create_table :materi_talaqis do |t|
      t.string :tipe
      t.string :title

      t.timestamps null: false
    end
  end
end
