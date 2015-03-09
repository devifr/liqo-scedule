class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.text :place
      t.integer :mc_id
      t.integer :kultum_id
      t.integer :materi_kultum_id

      t.timestamps null: false
    end
  end
end
