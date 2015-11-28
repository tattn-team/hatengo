class Koma < ActiveRecord::Base
  has_many :imgs, dependent: :destroy
  has_many :serifs,  dependent: :destroy
end
