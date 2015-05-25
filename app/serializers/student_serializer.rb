class StudentSerializer < ActiveModel::Serializer
  cached

  attributes :id, :lastname, :firstname, :matric_nos, :department, :level, :email, :phonenos
  has_one :accomodation

  def cached_key
    [object, scope]
  end
end
