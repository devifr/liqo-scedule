class Schedule < ActiveRecord::Base
  belongs_to :mc, class_name: 'User', foreign_key: :mc_id
  belongs_to :kultum, class_name: 'User', foreign_key: :kultum_id
  belongs_to :materi_kultum
end
