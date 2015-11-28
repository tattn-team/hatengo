class Yonkoma < ActiveRecord::Base
  has_many :koma, dependent: :destroy
end
