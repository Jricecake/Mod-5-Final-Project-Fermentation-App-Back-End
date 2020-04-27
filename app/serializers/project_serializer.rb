class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :end_date, :ingredients, :brines, :notes, :user, :vessels
end
