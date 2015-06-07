class AdministratorSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :password_digest
end
