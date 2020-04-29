class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :end_date, :created_at, :ingredients, :brines, :notes, :user, :vessels, :id
end
