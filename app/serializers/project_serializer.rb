class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :completed, :end_date, :created_at, :ingredients, :brines, :notes, :user, :vessels, :id, :completion_date
end
