class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :units, :prep
  has_one :project
end
