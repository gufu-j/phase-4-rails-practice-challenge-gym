class MembershipSerializer < ActiveModel::Serializer
  attributes :gym_id, :client_id, :charge

  belongs_to :gym
end
