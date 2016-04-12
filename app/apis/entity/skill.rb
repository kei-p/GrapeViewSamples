class Entity::Skill < Grape::Entity
  expose :skill do
    expose :name
  end
end
