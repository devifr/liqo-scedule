class AddColumnMateriTalaqiIdAndTalaqiIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :materi_talaqi_id, :integer
    add_column :schedules, :talaqi_id, :integer
  end
end
