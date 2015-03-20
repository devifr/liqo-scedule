class AddColumnDoaIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :doa_id, :integer
  end
end
