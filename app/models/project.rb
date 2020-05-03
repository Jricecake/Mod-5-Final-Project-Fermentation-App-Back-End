class Project < ApplicationRecord
  belongs_to :user
  has_many :notes
  has_many :ingredients
  has_many :vessels
  has_many :brines
  accepts_nested_attributes_for :ingredients, :vessels, :brines
end
