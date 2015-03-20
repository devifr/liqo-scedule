class Schedule < ActiveRecord::Base
  belongs_to :mc, class_name: 'User', foreign_key: :mc_id
  belongs_to :talaqi, class_name: 'User', foreign_key: :talaqi_id
  belongs_to :kultum, class_name: 'User', foreign_key: :kultum_id
  belongs_to :doa, class_name: 'User', foreign_key: :doa_id
  belongs_to :materi_kultum
  belongs_to :materi_talaqi
end
