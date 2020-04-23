class VesselSerializer < ActiveModel::Serializer
  attributes :id, :type, :volume, :units, :airlock, :weight, :material, :notes
  has_one :project
end
