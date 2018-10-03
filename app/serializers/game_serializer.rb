class GameSerializer < ActiveModel::Serializer
  attributes :id, :users

  def users
    self.object.users.map do |user|
      {
        name:user.name,
        points:user.points
      }
    end
  end
end
