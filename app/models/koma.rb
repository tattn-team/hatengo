class Koma < ActiveRecord::Base
  belongs_to :yonkoma
  has_many :imgs, dependent: :destroy
  has_many :serifs,  dependent: :destroy
end
