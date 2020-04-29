class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :project_id, :created_at
end
