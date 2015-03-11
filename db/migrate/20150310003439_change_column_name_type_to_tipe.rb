class ChangeColumnNameTypeToTipe < ActiveRecord::Migration
  def change
    rename_column :materi_kulta, :type, :tipe
  end
end
