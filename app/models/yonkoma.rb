class Yonkoma < ActiveRecord::Base
  has_many :komas, dependent: :destroy
end
