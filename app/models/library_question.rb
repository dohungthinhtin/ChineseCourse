class LibraryQuestion < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_one_attached :audio, dependent: :destroy
  has_many_attached :images, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
end
