class Project < ApplicationRecord
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_many :vessels, dependent: :destroy
  has_many :brines, dependent: :destroy
  accepts_nested_attributes_for :ingredients, :vessels, :brines
end
