object @user => :user
attributes :name, :age

node :skills do
  partial('rabl/skill_collection', object: @user.skills)
end
