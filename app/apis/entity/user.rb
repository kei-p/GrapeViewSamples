class Entity::User < Grape::Entity
  expose :user do
    expose :name
    expose :age

    expose :skills, using: Entity::Skill
  end
end
