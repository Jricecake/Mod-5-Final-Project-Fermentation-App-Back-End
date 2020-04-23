class BrineSerializer < ActiveModel::Serializer
  attributes :id, :amount, :units, :salt, :sugar
  has_one :project
end
