class Schedule < ActiveRecord::Base
  belongs_to :mc, class_name: 'User'
  belongs_to :kultum, class_name: 'User'
  belongs_to :materi_kultum
end
